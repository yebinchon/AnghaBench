
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct swait_queue_head {int lock; } ;
struct swait_queue {int task_list; } ;


 int TASK_RUNNING ;
 int __set_current_state (int ) ;
 int list_del_init (int *) ;
 int list_empty_careful (int *) ;
 int raw_spin_lock_irqsave (int *,unsigned long) ;
 int raw_spin_unlock_irqrestore (int *,unsigned long) ;

void finish_swait(struct swait_queue_head *q, struct swait_queue *wait)
{
 unsigned long flags;

 __set_current_state(TASK_RUNNING);

 if (!list_empty_careful(&wait->task_list)) {
  raw_spin_lock_irqsave(&q->lock, flags);
  list_del_init(&wait->task_list);
  raw_spin_unlock_irqrestore(&q->lock, flags);
 }
}
