
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;
struct deferred_split {int split_queue_lock; int split_queue_len; } ;


 int free_compound_page (struct page*) ;
 struct deferred_split* get_deferred_split_queue (struct page*) ;
 int list_del (int ) ;
 int list_empty (int ) ;
 int page_deferred_list (struct page*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

void free_transhuge_page(struct page *page)
{
 struct deferred_split *ds_queue = get_deferred_split_queue(page);
 unsigned long flags;

 spin_lock_irqsave(&ds_queue->split_queue_lock, flags);
 if (!list_empty(page_deferred_list(page))) {
  ds_queue->split_queue_len--;
  list_del(page_deferred_list(page));
 }
 spin_unlock_irqrestore(&ds_queue->split_queue_lock, flags);
 free_compound_page(page);
}
