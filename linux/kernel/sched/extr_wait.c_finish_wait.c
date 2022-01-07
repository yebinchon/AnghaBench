
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wait_queue_head {int lock; } ;
struct wait_queue_entry {int entry; } ;


 int TASK_RUNNING ;
 int __set_current_state (int ) ;
 int list_del_init (int *) ;
 int list_empty_careful (int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

void finish_wait(struct wait_queue_head *wq_head, struct wait_queue_entry *wq_entry)
{
 unsigned long flags;

 __set_current_state(TASK_RUNNING);
 if (!list_empty_careful(&wq_entry->entry)) {
  spin_lock_irqsave(&wq_head->lock, flags);
  list_del_init(&wq_entry->entry);
  spin_unlock_irqrestore(&wq_head->lock, flags);
 }
}
