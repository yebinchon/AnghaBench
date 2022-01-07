
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dma_pool {struct device* dev; } ;
struct device {int dummy; } ;


 int WARN_ON (int ) ;
 int devres_release (struct device*,int ,int ,struct dma_pool*) ;
 int dmam_pool_match ;
 int dmam_pool_release ;

void dmam_pool_destroy(struct dma_pool *pool)
{
 struct device *dev = pool->dev;

 WARN_ON(devres_release(dev, dmam_pool_release, dmam_pool_match, pool));
}
