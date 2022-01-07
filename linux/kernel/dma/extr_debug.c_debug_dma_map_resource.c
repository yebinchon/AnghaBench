
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dma_debug_entry {size_t size; int direction; int map_err_type; int dev_addr; int offset; int pfn; struct device* dev; int type; } ;
struct device {int dummy; } ;
typedef int phys_addr_t ;
typedef int dma_addr_t ;


 int MAP_ERR_NOT_CHECKED ;
 int PHYS_PFN (int ) ;
 int add_dma_entry (struct dma_debug_entry*) ;
 int dma_debug_disabled () ;
 int dma_debug_resource ;
 struct dma_debug_entry* dma_entry_alloc () ;
 int offset_in_page (int ) ;
 scalar_t__ unlikely (int ) ;

void debug_dma_map_resource(struct device *dev, phys_addr_t addr, size_t size,
       int direction, dma_addr_t dma_addr)
{
 struct dma_debug_entry *entry;

 if (unlikely(dma_debug_disabled()))
  return;

 entry = dma_entry_alloc();
 if (!entry)
  return;

 entry->type = dma_debug_resource;
 entry->dev = dev;
 entry->pfn = PHYS_PFN(addr);
 entry->offset = offset_in_page(addr);
 entry->size = size;
 entry->dev_addr = dma_addr;
 entry->direction = direction;
 entry->map_err_type = MAP_ERR_NOT_CHECKED;

 add_dma_entry(entry);
}
