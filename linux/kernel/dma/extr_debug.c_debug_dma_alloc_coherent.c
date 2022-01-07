
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dma_debug_entry {size_t size; int pfn; int direction; int dev_addr; int offset; struct device* dev; int type; } ;
struct device {int dummy; } ;
typedef int dma_addr_t ;


 int DMA_BIDIRECTIONAL ;
 int add_dma_entry (struct dma_debug_entry*) ;
 int dma_debug_coherent ;
 int dma_debug_disabled () ;
 struct dma_debug_entry* dma_entry_alloc () ;
 scalar_t__ is_vmalloc_addr (void*) ;
 int offset_in_page (void*) ;
 int page_to_pfn (int ) ;
 scalar_t__ unlikely (int ) ;
 int virt_addr_valid (void*) ;
 int virt_to_page (void*) ;
 int vmalloc_to_pfn (void*) ;

void debug_dma_alloc_coherent(struct device *dev, size_t size,
         dma_addr_t dma_addr, void *virt)
{
 struct dma_debug_entry *entry;

 if (unlikely(dma_debug_disabled()))
  return;

 if (unlikely(virt == ((void*)0)))
  return;


 if (!is_vmalloc_addr(virt) && !virt_addr_valid(virt))
  return;

 entry = dma_entry_alloc();
 if (!entry)
  return;

 entry->type = dma_debug_coherent;
 entry->dev = dev;
 entry->offset = offset_in_page(virt);
 entry->size = size;
 entry->dev_addr = dma_addr;
 entry->direction = DMA_BIDIRECTIONAL;

 if (is_vmalloc_addr(virt))
  entry->pfn = vmalloc_to_pfn(virt);
 else
  entry->pfn = page_to_pfn(virt_to_page(virt));

 add_dma_entry(entry);
}
