
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dma_pool {int dummy; } ;
struct device {int dummy; } ;


 int GFP_KERNEL ;
 int devres_add (struct device*,struct dma_pool**) ;
 struct dma_pool** devres_alloc (int ,int,int ) ;
 int devres_free (struct dma_pool**) ;
 struct dma_pool* dma_pool_create (char const*,struct device*,size_t,size_t,size_t) ;
 int dmam_pool_release ;

struct dma_pool *dmam_pool_create(const char *name, struct device *dev,
      size_t size, size_t align, size_t allocation)
{
 struct dma_pool **ptr, *pool;

 ptr = devres_alloc(dmam_pool_release, sizeof(*ptr), GFP_KERNEL);
 if (!ptr)
  return ((void*)0);

 pool = *ptr = dma_pool_create(name, dev, size, align, allocation);
 if (pool)
  devres_add(dev, ptr);
 else
  devres_free(ptr);

 return pool;
}
