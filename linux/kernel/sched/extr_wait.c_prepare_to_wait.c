
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wait_queue_head {int lock; } ;
struct wait_queue_entry {int entry; int flags; } ;


 int WQ_FLAG_EXCLUSIVE ;
 int __add_wait_queue (struct wait_queue_head*,struct wait_queue_entry*) ;
 scalar_t__ list_empty (int *) ;
 int set_current_state (int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

void
prepare_to_wait(struct wait_queue_head *wq_head, struct wait_queue_entry *wq_entry, int state)
{
 unsigned long flags;

 wq_entry->flags &= ~WQ_FLAG_EXCLUSIVE;
 spin_lock_irqsave(&wq_head->lock, flags);
 if (list_empty(&wq_entry->entry))
  __add_wait_queue(wq_head, wq_entry);
 set_current_state(state);
 spin_unlock_irqrestore(&wq_head->lock, flags);
}
