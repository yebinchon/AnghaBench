
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int lock; } ;
typedef TYPE_1__ wait_queue_head_t ;
struct TYPE_8__ {int flags; int entry; int * func; int * private; } ;
typedef TYPE_2__ wait_queue_entry_t ;
struct wait_page_key {int bit_nr; scalar_t__ page_match; struct page* page; } ;
struct page {int dummy; } ;


 int ClearPageWaiters (struct page*) ;
 int INIT_LIST_HEAD (int *) ;
 int TASK_NORMAL ;
 int WQ_FLAG_BOOKMARK ;
 int __wake_up_locked_key_bookmark (TYPE_1__*,int ,struct wait_page_key*,TYPE_2__*) ;
 int cpu_relax () ;
 TYPE_1__* page_waitqueue (struct page*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int waitqueue_active (TYPE_1__*) ;

__attribute__((used)) static void wake_up_page_bit(struct page *page, int bit_nr)
{
 wait_queue_head_t *q = page_waitqueue(page);
 struct wait_page_key key;
 unsigned long flags;
 wait_queue_entry_t bookmark;

 key.page = page;
 key.bit_nr = bit_nr;
 key.page_match = 0;

 bookmark.flags = 0;
 bookmark.private = ((void*)0);
 bookmark.func = ((void*)0);
 INIT_LIST_HEAD(&bookmark.entry);

 spin_lock_irqsave(&q->lock, flags);
 __wake_up_locked_key_bookmark(q, TASK_NORMAL, &key, &bookmark);

 while (bookmark.flags & WQ_FLAG_BOOKMARK) {






  spin_unlock_irqrestore(&q->lock, flags);
  cpu_relax();
  spin_lock_irqsave(&q->lock, flags);
  __wake_up_locked_key_bookmark(q, TASK_NORMAL, &key, &bookmark);
 }
 if (!waitqueue_active(q) || !key.page_match) {
  ClearPageWaiters(page);







 }
 spin_unlock_irqrestore(&q->lock, flags);
}
