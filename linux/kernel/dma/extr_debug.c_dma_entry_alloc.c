
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dma_debug_entry {int stack_entries; int stack_len; } ;


 int ARRAY_SIZE (int ) ;
 int GFP_ATOMIC ;
 struct dma_debug_entry* __dma_entry_alloc () ;
 int __dma_entry_alloc_check_leak () ;
 scalar_t__ dma_debug_create_entries (int ) ;
 int free_entries_lock ;
 int global_disable ;
 scalar_t__ num_free_entries ;
 int pr_err (char*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int stack_trace_save (int ,int ,int) ;

__attribute__((used)) static struct dma_debug_entry *dma_entry_alloc(void)
{
 struct dma_debug_entry *entry;
 unsigned long flags;

 spin_lock_irqsave(&free_entries_lock, flags);
 if (num_free_entries == 0) {
  if (dma_debug_create_entries(GFP_ATOMIC)) {
   global_disable = 1;
   spin_unlock_irqrestore(&free_entries_lock, flags);
   pr_err("debugging out of memory - disabling\n");
   return ((void*)0);
  }
  __dma_entry_alloc_check_leak();
 }

 entry = __dma_entry_alloc();

 spin_unlock_irqrestore(&free_entries_lock, flags);






 return entry;
}
