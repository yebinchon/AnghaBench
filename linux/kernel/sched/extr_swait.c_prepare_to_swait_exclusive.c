
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct swait_queue_head {int lock; } ;
struct swait_queue {int dummy; } ;


 int __prepare_to_swait (struct swait_queue_head*,struct swait_queue*) ;
 int raw_spin_lock_irqsave (int *,unsigned long) ;
 int raw_spin_unlock_irqrestore (int *,unsigned long) ;
 int set_current_state (int) ;

void prepare_to_swait_exclusive(struct swait_queue_head *q, struct swait_queue *wait, int state)
{
 unsigned long flags;

 raw_spin_lock_irqsave(&q->lock, flags);
 __prepare_to_swait(q, wait);
 set_current_state(state);
 raw_spin_unlock_irqrestore(&q->lock, flags);
}
