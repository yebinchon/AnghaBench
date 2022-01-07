
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_seq_timer {int lock; } ;


 int seq_timer_continue (struct snd_seq_timer*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

int snd_seq_timer_continue(struct snd_seq_timer *tmr)
{
 unsigned long flags;
 int err;

 spin_lock_irqsave(&tmr->lock, flags);
 err = seq_timer_continue(tmr);
 spin_unlock_irqrestore(&tmr->lock, flags);
 return err;
}
