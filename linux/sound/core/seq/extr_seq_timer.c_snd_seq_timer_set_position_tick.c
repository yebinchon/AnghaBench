
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ fraction; int cur_tick; } ;
struct snd_seq_timer {int lock; TYPE_1__ tick; } ;
typedef int snd_seq_tick_time_t ;


 int EINVAL ;
 scalar_t__ snd_BUG_ON (int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

int snd_seq_timer_set_position_tick(struct snd_seq_timer *tmr,
        snd_seq_tick_time_t position)
{
 unsigned long flags;

 if (snd_BUG_ON(!tmr))
  return -EINVAL;

 spin_lock_irqsave(&tmr->lock, flags);
 tmr->tick.cur_tick = position;
 tmr->tick.fraction = 0;
 spin_unlock_irqrestore(&tmr->lock, flags);
 return 0;
}
