
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dma_debug_entry {int list; } ;


 int active_cacheline_remove (struct dma_debug_entry*) ;
 int free_entries ;
 int free_entries_lock ;
 int list_add (int *,int *) ;
 int num_free_entries ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void dma_entry_free(struct dma_debug_entry *entry)
{
 unsigned long flags;

 active_cacheline_remove(entry);





 spin_lock_irqsave(&free_entries_lock, flags);
 list_add(&entry->list, &free_entries);
 num_free_entries += 1;
 spin_unlock_irqrestore(&free_entries_lock, flags);
}
