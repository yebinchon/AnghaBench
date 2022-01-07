
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;
typedef int gfp_t ;
typedef int dma_addr_t ;


 int CONFIG_ARCH_HAS_UNCACHED_SEGMENT ;
 int IS_ENABLED (int ) ;
 void* arch_dma_alloc (struct device*,size_t,int *,int ,unsigned long) ;
 scalar_t__ dma_alloc_need_uncached (struct device*,unsigned long) ;
 void* dma_direct_alloc_pages (struct device*,size_t,int *,int ,unsigned long) ;

void *dma_direct_alloc(struct device *dev, size_t size,
  dma_addr_t *dma_handle, gfp_t gfp, unsigned long attrs)
{
 if (!IS_ENABLED(CONFIG_ARCH_HAS_UNCACHED_SEGMENT) &&
     dma_alloc_need_uncached(dev, attrs))
  return arch_dma_alloc(dev, size, dma_handle, gfp, attrs);
 return dma_direct_alloc_pages(dev, size, dma_handle, gfp, attrs);
}
