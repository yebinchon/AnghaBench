
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_seq_timer {unsigned int skew; int lock; } ;


 int EINVAL ;
 unsigned int SKEW_BASE ;
 int pr_debug (char*,unsigned int) ;
 scalar_t__ snd_BUG_ON (int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

int snd_seq_timer_set_skew(struct snd_seq_timer *tmr, unsigned int skew,
      unsigned int base)
{
 unsigned long flags;

 if (snd_BUG_ON(!tmr))
  return -EINVAL;


 if (base != SKEW_BASE) {
  pr_debug("ALSA: seq: invalid skew base 0x%x\n", base);
  return -EINVAL;
 }
 spin_lock_irqsave(&tmr->lock, flags);
 tmr->skew = skew;
 spin_unlock_irqrestore(&tmr->lock, flags);
 return 0;
}
