
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u32 ;
struct TYPE_2__ {int handle; } ;
struct stack_record {TYPE_1__ handle; struct stack_record* next; } ;
struct page {int dummy; } ;
typedef int gfp_t ;
typedef int depot_stack_handle_t ;


 int GFP_ATOMIC ;
 int GFP_KERNEL ;
 int GFP_ZONEMASK ;
 int STACK_ALLOC_ORDER ;
 size_t STACK_HASH_MASK ;
 int WARN_ON (int) ;
 int __GFP_NOWARN ;
 struct page* alloc_pages (int,int ) ;
 struct stack_record* depot_alloc_stack (unsigned long*,unsigned int,size_t,void**,int) ;
 int depot_lock ;
 struct stack_record* find_stack (struct stack_record*,unsigned long*,unsigned int,size_t) ;
 int free_pages (unsigned long,int ) ;
 size_t hash_stack (unsigned long*,unsigned int) ;
 int init_stack_slab (void**) ;
 struct stack_record* next_slab_inited ;
 void* page_address (struct page*) ;
 struct stack_record* smp_load_acquire (struct stack_record**) ;
 int smp_store_release (struct stack_record**,struct stack_record*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 struct stack_record** stack_table ;
 scalar_t__ unlikely (int) ;

depot_stack_handle_t stack_depot_save(unsigned long *entries,
          unsigned int nr_entries,
          gfp_t alloc_flags)
{
 struct stack_record *found = ((void*)0), **bucket;
 depot_stack_handle_t retval = 0;
 struct page *page = ((void*)0);
 void *prealloc = ((void*)0);
 unsigned long flags;
 u32 hash;

 if (unlikely(nr_entries == 0))
  goto fast_exit;

 hash = hash_stack(entries, nr_entries);
 bucket = &stack_table[hash & STACK_HASH_MASK];






 found = find_stack(smp_load_acquire(bucket), entries,
      nr_entries, hash);
 if (found)
  goto exit;
 if (unlikely(!smp_load_acquire(&next_slab_inited))) {





  alloc_flags &= ~GFP_ZONEMASK;
  alloc_flags &= (GFP_ATOMIC | GFP_KERNEL);
  alloc_flags |= __GFP_NOWARN;
  page = alloc_pages(alloc_flags, STACK_ALLOC_ORDER);
  if (page)
   prealloc = page_address(page);
 }

 spin_lock_irqsave(&depot_lock, flags);

 found = find_stack(*bucket, entries, nr_entries, hash);
 if (!found) {
  struct stack_record *new =
   depot_alloc_stack(entries, nr_entries,
       hash, &prealloc, alloc_flags);
  if (new) {
   new->next = *bucket;




   smp_store_release(bucket, new);
   found = new;
  }
 } else if (prealloc) {




  WARN_ON(!init_stack_slab(&prealloc));
 }

 spin_unlock_irqrestore(&depot_lock, flags);
exit:
 if (prealloc) {

  free_pages((unsigned long)prealloc, STACK_ALLOC_ORDER);
 }
 if (found)
  retval = found->handle.handle;
fast_exit:
 return retval;
}
