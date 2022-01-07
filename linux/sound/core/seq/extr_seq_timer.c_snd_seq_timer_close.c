
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_timer_instance {int dummy; } ;
struct snd_seq_timer {int lock; struct snd_timer_instance* timeri; } ;
struct snd_seq_queue {struct snd_seq_timer* timer; } ;


 int EINVAL ;
 scalar_t__ snd_BUG_ON (int) ;
 int snd_timer_close (struct snd_timer_instance*) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

int snd_seq_timer_close(struct snd_seq_queue *q)
{
 struct snd_seq_timer *tmr;
 struct snd_timer_instance *t;

 tmr = q->timer;
 if (snd_BUG_ON(!tmr))
  return -EINVAL;
 spin_lock_irq(&tmr->lock);
 t = tmr->timeri;
 tmr->timeri = ((void*)0);
 spin_unlock_irq(&tmr->lock);
 if (t)
  snd_timer_close(t);
 return 0;
}
