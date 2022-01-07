
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void page ;
struct device {int dummy; } ;
typedef int gfp_t ;
typedef int dma_addr_t ;


 int CONFIG_ARCH_HAS_UNCACHED_SEGMENT ;
 unsigned long DMA_ATTR_NO_KERNEL_MAPPING ;
 scalar_t__ IS_ENABLED (int ) ;
 scalar_t__ PageHighMem (void*) ;
 void* __dma_direct_alloc_pages (struct device*,size_t,int *,int ,unsigned long) ;
 int __dma_direct_free_pages (struct device*,size_t,void*) ;
 int __phys_to_dma (struct device*,int ) ;
 int arch_dma_prep_coherent (void*,size_t) ;
 int dev_info (struct device*,char*) ;
 scalar_t__ dma_alloc_need_uncached (struct device*,unsigned long) ;
 scalar_t__ force_dma_unencrypted (struct device*) ;
 int get_order (size_t) ;
 int memset (void*,int ,size_t) ;
 void* page_address (void*) ;
 int page_to_phys (void*) ;
 int phys_to_dma (struct device*,int ) ;
 int set_memory_decrypted (unsigned long,int) ;
 void* uncached_kernel_address (void*) ;

void *dma_direct_alloc_pages(struct device *dev, size_t size,
  dma_addr_t *dma_handle, gfp_t gfp, unsigned long attrs)
{
 struct page *page;
 void *ret;

 page = __dma_direct_alloc_pages(dev, size, dma_handle, gfp, attrs);
 if (!page)
  return ((void*)0);

 if ((attrs & DMA_ATTR_NO_KERNEL_MAPPING) &&
     !force_dma_unencrypted(dev)) {

  if (!PageHighMem(page))
   arch_dma_prep_coherent(page, size);
  *dma_handle = phys_to_dma(dev, page_to_phys(page));

  return page;
 }

 if (PageHighMem(page)) {






  dev_info(dev, "Rejecting highmem page from CMA.\n");
  __dma_direct_free_pages(dev, size, page);
  return ((void*)0);
 }

 ret = page_address(page);
 if (force_dma_unencrypted(dev)) {
  set_memory_decrypted((unsigned long)ret, 1 << get_order(size));
  *dma_handle = __phys_to_dma(dev, page_to_phys(page));
 } else {
  *dma_handle = phys_to_dma(dev, page_to_phys(page));
 }
 memset(ret, 0, size);

 if (IS_ENABLED(CONFIG_ARCH_HAS_UNCACHED_SEGMENT) &&
     dma_alloc_need_uncached(dev, attrs)) {
  arch_dma_prep_coherent(page, size);
  ret = uncached_kernel_address(ret);
 }

 return ret;
}
