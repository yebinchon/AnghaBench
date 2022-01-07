
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int lock; } ;
typedef TYPE_1__ wait_queue_head_t ;
typedef int wait_queue_entry_t ;
struct page {int dummy; } ;


 int SetPageWaiters (struct page*) ;
 int __add_wait_queue_entry_tail (TYPE_1__*,int *) ;
 TYPE_1__* page_waitqueue (struct page*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

void add_page_wait_queue(struct page *page, wait_queue_entry_t *waiter)
{
 wait_queue_head_t *q = page_waitqueue(page);
 unsigned long flags;

 spin_lock_irqsave(&q->lock, flags);
 __add_wait_queue_entry_tail(q, waiter);
 SetPageWaiters(page);
 spin_unlock_irqrestore(&q->lock, flags);
}
