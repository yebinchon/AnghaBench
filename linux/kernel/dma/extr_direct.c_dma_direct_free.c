
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;
typedef int dma_addr_t ;


 int CONFIG_ARCH_HAS_UNCACHED_SEGMENT ;
 int IS_ENABLED (int ) ;
 int arch_dma_free (struct device*,size_t,void*,int ,unsigned long) ;
 scalar_t__ dma_alloc_need_uncached (struct device*,unsigned long) ;
 int dma_direct_free_pages (struct device*,size_t,void*,int ,unsigned long) ;

void dma_direct_free(struct device *dev, size_t size,
  void *cpu_addr, dma_addr_t dma_addr, unsigned long attrs)
{
 if (!IS_ENABLED(CONFIG_ARCH_HAS_UNCACHED_SEGMENT) &&
     dma_alloc_need_uncached(dev, attrs))
  arch_dma_free(dev, size, cpu_addr, dma_addr, attrs);
 else
  dma_direct_free_pages(dev, size, cpu_addr, dma_addr, attrs);
}
