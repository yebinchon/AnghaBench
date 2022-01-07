
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_timer {int lock; int sack_list_head; TYPE_1__* card; } ;
struct TYPE_2__ {scalar_t__ shutdown; } ;


 int snd_timer_clear_callbacks (struct snd_timer*,int *) ;
 int snd_timer_process_callbacks (struct snd_timer*,int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void snd_timer_tasklet(unsigned long arg)
{
 struct snd_timer *timer = (struct snd_timer *) arg;
 unsigned long flags;

 if (timer->card && timer->card->shutdown) {
  snd_timer_clear_callbacks(timer, &timer->sack_list_head);
  return;
 }

 spin_lock_irqsave(&timer->lock, flags);
 snd_timer_process_callbacks(timer, &timer->sack_list_head);
 spin_unlock_irqrestore(&timer->lock, flags);
}
