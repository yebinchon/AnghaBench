
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dma_debug_entry {size_t size; int pfn; int direction; int dev_addr; int offset; struct device* dev; int type; } ;
struct device {int dummy; } ;
typedef int dma_addr_t ;


 int DMA_BIDIRECTIONAL ;
 int check_unmap (struct dma_debug_entry*) ;
 int dma_debug_coherent ;
 int dma_debug_disabled () ;
 scalar_t__ is_vmalloc_addr (void*) ;
 int offset_in_page (void*) ;
 int page_to_pfn (int ) ;
 scalar_t__ unlikely (int ) ;
 int virt_addr_valid (void*) ;
 int virt_to_page (void*) ;
 int vmalloc_to_pfn (void*) ;

void debug_dma_free_coherent(struct device *dev, size_t size,
    void *virt, dma_addr_t addr)
{
 struct dma_debug_entry ref = {
  .type = dma_debug_coherent,
  .dev = dev,
  .offset = offset_in_page(virt),
  .dev_addr = addr,
  .size = size,
  .direction = DMA_BIDIRECTIONAL,
 };


 if (!is_vmalloc_addr(virt) && !virt_addr_valid(virt))
  return;

 if (is_vmalloc_addr(virt))
  ref.pfn = vmalloc_to_pfn(virt);
 else
  ref.pfn = page_to_pfn(virt_to_page(virt));

 if (unlikely(dma_debug_disabled()))
  return;

 check_unmap(&ref);
}
