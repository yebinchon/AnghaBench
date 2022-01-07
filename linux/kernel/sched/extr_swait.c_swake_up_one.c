
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct swait_queue_head {int lock; } ;


 int raw_spin_lock_irqsave (int *,unsigned long) ;
 int raw_spin_unlock_irqrestore (int *,unsigned long) ;
 int swake_up_locked (struct swait_queue_head*) ;

void swake_up_one(struct swait_queue_head *q)
{
 unsigned long flags;

 raw_spin_lock_irqsave(&q->lock, flags);
 swake_up_locked(q);
 raw_spin_unlock_irqrestore(&q->lock, flags);
}
