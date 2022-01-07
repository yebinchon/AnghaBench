
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dma_debug_entry {scalar_t__ direction; } ;
typedef int phys_addr_t ;


 scalar_t__ DMA_TO_DEVICE ;
 scalar_t__ active_cacheline_dec_overlap (int ) ;
 int dma_active_cacheline ;
 int radix_lock ;
 int radix_tree_delete (int *,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int to_cacheline_number (struct dma_debug_entry*) ;

__attribute__((used)) static void active_cacheline_remove(struct dma_debug_entry *entry)
{
 phys_addr_t cln = to_cacheline_number(entry);
 unsigned long flags;


 if (entry->direction == DMA_TO_DEVICE)
  return;

 spin_lock_irqsave(&radix_lock, flags);




 if (active_cacheline_dec_overlap(cln) < 0)
  radix_tree_delete(&dma_active_cacheline, cln);
 spin_unlock_irqrestore(&radix_lock, flags);
}
