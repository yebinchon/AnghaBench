
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dma_debug_entry {size_t size; int direction; int dev_addr; struct device* dev; int type; } ;
struct device {int dummy; } ;
typedef int dma_addr_t ;


 int check_unmap (struct dma_debug_entry*) ;
 int dma_debug_disabled () ;
 int dma_debug_single ;
 scalar_t__ unlikely (int ) ;

void debug_dma_unmap_page(struct device *dev, dma_addr_t addr,
     size_t size, int direction)
{
 struct dma_debug_entry ref = {
  .type = dma_debug_single,
  .dev = dev,
  .dev_addr = addr,
  .size = size,
  .direction = direction,
 };

 if (unlikely(dma_debug_disabled()))
  return;
 check_unmap(&ref);
}
