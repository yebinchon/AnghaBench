
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vm_area_struct {unsigned long vm_pgoff; int vm_page_prot; int vm_start; } ;
struct device {int dummy; } ;
typedef int dma_addr_t ;


 int CONFIG_ARCH_HAS_DMA_COHERENT_TO_PFN ;
 int ENXIO ;
 int IS_ENABLED (int ) ;
 unsigned long PAGE_ALIGN (size_t) ;
 unsigned long PAGE_SHIFT ;
 unsigned long arch_dma_coherent_to_pfn (struct device*,void*,int ) ;
 int dev_is_dma_coherent (struct device*) ;
 scalar_t__ dma_mmap_from_dev_coherent (struct device*,struct vm_area_struct*,void*,size_t,int*) ;
 int dma_pgprot (struct device*,int ,unsigned long) ;
 unsigned long page_to_pfn (int ) ;
 int pfn_valid (unsigned long) ;
 int remap_pfn_range (struct vm_area_struct*,int ,unsigned long,unsigned long,int ) ;
 int virt_to_page (void*) ;
 unsigned long vma_pages (struct vm_area_struct*) ;

int dma_common_mmap(struct device *dev, struct vm_area_struct *vma,
  void *cpu_addr, dma_addr_t dma_addr, size_t size,
  unsigned long attrs)
{
 return -ENXIO;

}
