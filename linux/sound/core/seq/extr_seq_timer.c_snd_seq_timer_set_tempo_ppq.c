
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_seq_timer {int ppq; int tempo; int lock; scalar_t__ running; } ;


 int EBUSY ;
 int EINVAL ;
 int pr_debug (char*) ;
 scalar_t__ snd_BUG_ON (int) ;
 int snd_seq_timer_set_tick_resolution (struct snd_seq_timer*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

int snd_seq_timer_set_tempo_ppq(struct snd_seq_timer *tmr, int tempo, int ppq)
{
 int changed;
 unsigned long flags;

 if (snd_BUG_ON(!tmr))
  return -EINVAL;
 if (tempo <= 0 || ppq <= 0)
  return -EINVAL;
 spin_lock_irqsave(&tmr->lock, flags);
 if (tmr->running && (ppq != tmr->ppq)) {


  spin_unlock_irqrestore(&tmr->lock, flags);
  pr_debug("ALSA: seq: cannot change ppq of a running timer\n");
  return -EBUSY;
 }
 changed = (tempo != tmr->tempo) || (ppq != tmr->ppq);
 tmr->tempo = tempo;
 tmr->ppq = ppq;
 if (changed)
  snd_seq_timer_set_tick_resolution(tmr);
 spin_unlock_irqrestore(&tmr->lock, flags);
 return 0;
}
