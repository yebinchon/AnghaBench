
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct seq_oss_writeq {int sync_lock; int sync_sleep; scalar_t__ sync_event_put; int sync_time; } ;
typedef int abstime_t ;


 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int wake_up (int *) ;

void
snd_seq_oss_writeq_wakeup(struct seq_oss_writeq *q, abstime_t time)
{
 unsigned long flags;

 spin_lock_irqsave(&q->sync_lock, flags);
 q->sync_time = time;
 q->sync_event_put = 0;
 wake_up(&q->sync_sleep);
 spin_unlock_irqrestore(&q->sync_lock, flags);
}
