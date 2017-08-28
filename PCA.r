require(graphics)
PCA<-prcomp(USArrests, scale = TRUE)
View(PCA)
head(PCA)
summary(PCA)

PCA - a way of compressing datasets with many dimensions (variables or columns)  
into a few principal componets that has a high degree of predictive power - 
they explain most of the variability - using an orthogonal transformation

Princomp() - single value decomposition
Prcomp() - eigenfunctions 
require(graphics)
PCA<-prcomp(USArrests, scale = TRUE)
screeplot(PCA)

> PCA$sdev^2
You square the standard deviations to get the eigenvalues. 
If the eigenvalues are over 1 then you should use them.
[1] 2.4802416 0.9897652 0.3565632 0.1734301
So you should use the first two (since the second one is so close to one)


A biplot gives you an idea of where and how these things cluster
biplot(PCA)


