
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;
struct dma_debug_entry {size_t offset; size_t size; int direction; int map_err_type; int dev_addr; int pfn; int type; struct device* dev; } ;
struct device {int dummy; } ;
typedef int dma_addr_t ;


 int MAP_ERR_NOT_CHECKED ;
 int PageHighMem (struct page*) ;
 int add_dma_entry (struct dma_debug_entry*) ;
 int check_for_illegal_area (struct device*,void*,size_t) ;
 int check_for_stack (struct device*,struct page*,size_t) ;
 int dma_debug_disabled () ;
 int dma_debug_single ;
 struct dma_debug_entry* dma_entry_alloc () ;
 scalar_t__ dma_mapping_error (struct device*,int ) ;
 void* page_address (struct page*) ;
 int page_to_pfn (struct page*) ;
 scalar_t__ unlikely (int ) ;

void debug_dma_map_page(struct device *dev, struct page *page, size_t offset,
   size_t size, int direction, dma_addr_t dma_addr)
{
 struct dma_debug_entry *entry;

 if (unlikely(dma_debug_disabled()))
  return;

 if (dma_mapping_error(dev, dma_addr))
  return;

 entry = dma_entry_alloc();
 if (!entry)
  return;

 entry->dev = dev;
 entry->type = dma_debug_single;
 entry->pfn = page_to_pfn(page);
 entry->offset = offset,
 entry->dev_addr = dma_addr;
 entry->size = size;
 entry->direction = direction;
 entry->map_err_type = MAP_ERR_NOT_CHECKED;

 check_for_stack(dev, page, offset);

 if (!PageHighMem(page)) {
  void *addr = page_address(page) + offset;

  check_for_illegal_area(dev, addr, size);
 }

 add_dma_entry(entry);
}
