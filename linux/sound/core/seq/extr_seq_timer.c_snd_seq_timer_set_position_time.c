
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_seq_timer {int lock; int cur_time; } ;
typedef int snd_seq_real_time_t ;


 int EINVAL ;
 scalar_t__ snd_BUG_ON (int) ;
 int snd_seq_sanity_real_time (int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

int snd_seq_timer_set_position_time(struct snd_seq_timer *tmr,
        snd_seq_real_time_t position)
{
 unsigned long flags;

 if (snd_BUG_ON(!tmr))
  return -EINVAL;

 snd_seq_sanity_real_time(&position);
 spin_lock_irqsave(&tmr->lock, flags);
 tmr->cur_time = position;
 spin_unlock_irqrestore(&tmr->lock, flags);
 return 0;
}
