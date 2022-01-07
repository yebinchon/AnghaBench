
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;
typedef int dma_addr_t ;


 int CONFIG_ARCH_HAS_UNCACHED_SEGMENT ;
 unsigned long DMA_ATTR_NO_KERNEL_MAPPING ;
 scalar_t__ IS_ENABLED (int ) ;
 int __dma_direct_free_pages (struct device*,size_t,void*) ;
 void* cached_kernel_address (void*) ;
 scalar_t__ dma_alloc_need_uncached (struct device*,unsigned long) ;
 scalar_t__ force_dma_unencrypted (struct device*) ;
 unsigned int get_order (size_t) ;
 int set_memory_encrypted (unsigned long,int) ;
 void* virt_to_page (void*) ;

void dma_direct_free_pages(struct device *dev, size_t size, void *cpu_addr,
  dma_addr_t dma_addr, unsigned long attrs)
{
 unsigned int page_order = get_order(size);

 if ((attrs & DMA_ATTR_NO_KERNEL_MAPPING) &&
     !force_dma_unencrypted(dev)) {

  __dma_direct_free_pages(dev, size, cpu_addr);
  return;
 }

 if (force_dma_unencrypted(dev))
  set_memory_encrypted((unsigned long)cpu_addr, 1 << page_order);

 if (IS_ENABLED(CONFIG_ARCH_HAS_UNCACHED_SEGMENT) &&
     dma_alloc_need_uncached(dev, attrs))
  cpu_addr = cached_kernel_address(cpu_addr);
 __dma_direct_free_pages(dev, size, virt_to_page(cpu_addr));
}
