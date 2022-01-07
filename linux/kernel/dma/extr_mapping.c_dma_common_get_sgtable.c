
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sg_table {int sgl; } ;
struct page {int dummy; } ;
struct device {int dummy; } ;
typedef int dma_addr_t ;


 int CONFIG_ARCH_HAS_DMA_COHERENT_TO_PFN ;
 int ENXIO ;
 int GFP_KERNEL ;
 int IS_ENABLED (int ) ;
 int PAGE_ALIGN (size_t) ;
 unsigned long arch_dma_coherent_to_pfn (struct device*,void*,int ) ;
 int dev_is_dma_coherent (struct device*) ;
 struct page* pfn_to_page (unsigned long) ;
 int pfn_valid (unsigned long) ;
 int sg_alloc_table (struct sg_table*,int,int ) ;
 int sg_set_page (int ,struct page*,int ,int ) ;
 struct page* virt_to_page (void*) ;

int dma_common_get_sgtable(struct device *dev, struct sg_table *sgt,
   void *cpu_addr, dma_addr_t dma_addr, size_t size,
   unsigned long attrs)
{
 struct page *page;
 int ret;

 if (!dev_is_dma_coherent(dev)) {
  unsigned long pfn;

  if (!IS_ENABLED(CONFIG_ARCH_HAS_DMA_COHERENT_TO_PFN))
   return -ENXIO;


  pfn = arch_dma_coherent_to_pfn(dev, cpu_addr, dma_addr);
  if (!pfn_valid(pfn))
   return -ENXIO;
  page = pfn_to_page(pfn);
 } else {
  page = virt_to_page(cpu_addr);
 }

 ret = sg_alloc_table(sgt, 1, GFP_KERNEL);
 if (!ret)
  sg_set_page(sgt->sgl, page, PAGE_ALIGN(size), 0);
 return ret;
}
