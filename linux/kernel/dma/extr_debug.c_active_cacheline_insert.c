
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dma_debug_entry {scalar_t__ direction; } ;
typedef int phys_addr_t ;


 scalar_t__ DMA_TO_DEVICE ;
 int EEXIST ;
 int active_cacheline_inc_overlap (int ) ;
 int dma_active_cacheline ;
 int radix_lock ;
 int radix_tree_insert (int *,int ,struct dma_debug_entry*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int to_cacheline_number (struct dma_debug_entry*) ;

__attribute__((used)) static int active_cacheline_insert(struct dma_debug_entry *entry)
{
 phys_addr_t cln = to_cacheline_number(entry);
 unsigned long flags;
 int rc;





 if (entry->direction == DMA_TO_DEVICE)
  return 0;

 spin_lock_irqsave(&radix_lock, flags);
 rc = radix_tree_insert(&dma_active_cacheline, cln, entry);
 if (rc == -EEXIST)
  active_cacheline_inc_overlap(cln);
 spin_unlock_irqrestore(&radix_lock, flags);

 return rc;
}
