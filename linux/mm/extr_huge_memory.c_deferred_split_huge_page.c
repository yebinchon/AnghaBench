
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct page {int dummy; } ;
struct mem_cgroup {int dummy; } ;
struct deferred_split {int split_queue_lock; int split_queue_len; int split_queue; } ;
struct TYPE_4__ {struct mem_cgroup* mem_cgroup; } ;
struct TYPE_3__ {int id; } ;


 scalar_t__ PageSwapCache (struct page*) ;
 int PageTransHuge (struct page*) ;
 int THP_DEFERRED_SPLIT_PAGE ;
 int VM_BUG_ON_PAGE (int,struct page*) ;
 TYPE_2__* compound_head (struct page*) ;
 int count_vm_event (int ) ;
 TYPE_1__ deferred_split_shrinker ;
 struct deferred_split* get_deferred_split_queue (struct page*) ;
 int list_add_tail (int ,int *) ;
 scalar_t__ list_empty (int ) ;
 int memcg_set_shrinker_bit (struct mem_cgroup*,int ,int ) ;
 int page_deferred_list (struct page*) ;
 int page_to_nid (struct page*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

void deferred_split_huge_page(struct page *page)
{
 struct deferred_split *ds_queue = get_deferred_split_queue(page);



 unsigned long flags;

 VM_BUG_ON_PAGE(!PageTransHuge(page), page);
 if (PageSwapCache(page))
  return;

 spin_lock_irqsave(&ds_queue->split_queue_lock, flags);
 if (list_empty(page_deferred_list(page))) {
  count_vm_event(THP_DEFERRED_SPLIT_PAGE);
  list_add_tail(page_deferred_list(page), &ds_queue->split_queue);
  ds_queue->split_queue_len++;





 }
 spin_unlock_irqrestore(&ds_queue->split_queue_lock, flags);
}
