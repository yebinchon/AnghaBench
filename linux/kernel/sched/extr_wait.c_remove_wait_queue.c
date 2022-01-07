
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wait_queue_head {int lock; } ;
struct wait_queue_entry {int dummy; } ;


 int __remove_wait_queue (struct wait_queue_head*,struct wait_queue_entry*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

void remove_wait_queue(struct wait_queue_head *wq_head, struct wait_queue_entry *wq_entry)
{
 unsigned long flags;

 spin_lock_irqsave(&wq_head->lock, flags);
 __remove_wait_queue(wq_head, wq_entry);
 spin_unlock_irqrestore(&wq_head->lock, flags);
}
