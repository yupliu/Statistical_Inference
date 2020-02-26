## HIeracrchicall Clustering

# add the first round of centroids to the plot, cex is the expansion of character
  points(cx,cy,col=c("red","orange","purple"),pch=3,cex=2,lwd=2)

# calculate distance of each point to the centroids
  mdist(x,y,cx,cy)
  
# pick the centroid that has minimum distance to each point
  apply(distTmp,2,which.min) # 2 is the 2nd col of distTmp
  
# re-assign each point to new centroids, use this new cluster assignments array to calculate mean for new centroids
  tapply(x,newClust,mean)
  tapply(y,newClust,mean) # to get new x,y coordinates for new centroids

# re-cal the distance with those new centroids
  disttmp2 <- mdist(x,y,newCx,newCy) # will re-assign centroid based on this distance
  apply(distTmp2,2,which.min) # find the min distance for points to re-assign centroids  
  
# find the new coordinates for the new centroids
  tapply(x,newClust2,mean)
  tapply(y,newClust2,mean)
  
# SVD (singlular value decomposition)  
  x=UDV^t # V^t represents the transpose of the matrix V
  svd(mat) # generate d,u and v, where matu %*% diag %*% t(matv) will be mat
# scale: means that we subtract the column mean from every element 
         # and divide the result by the column standard deviation
# give you principal components of mat
  prcomp(scale(mat)) # indicates PCA of a scaled matrix yields the V matrix (right singular vectors) of the same scaled matrix
  
  a1<- (svd1$u[,1] * svd1$d[1]) %*% t(svd1$v[,1])
  a2<- svd1$u[,1:2] %*% diag(svd1$d[1:2]) %*% t(svd1$v[,1:2])
  
## flip coin function
  set.seed(678910)
  for(i in 1:40){
    # flip a coin
    coinFlip <- rbinom(1,size=1,prob=0.5)
    # if coin is heads add a common pattern to that row
    if(coinFlip){
      dataMatrix[i,] <- dataMatrix[i,] + rep(c(0,3),each=5)
    }
  }
  

  
  
  
  
  
  