
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timer_list {int dummy; } ;
struct dummy_systimer_pcm {int elapsed; int substream; int lock; } ;


 struct dummy_systimer_pcm* dpcm ;
 int dummy_systimer_rearm (struct dummy_systimer_pcm*) ;
 int dummy_systimer_update (struct dummy_systimer_pcm*) ;
 struct dummy_systimer_pcm* from_timer (int ,struct timer_list*,int ) ;
 int snd_pcm_period_elapsed (int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int timer ;

__attribute__((used)) static void dummy_systimer_callback(struct timer_list *t)
{
 struct dummy_systimer_pcm *dpcm = from_timer(dpcm, t, timer);
 unsigned long flags;
 int elapsed = 0;

 spin_lock_irqsave(&dpcm->lock, flags);
 dummy_systimer_update(dpcm);
 dummy_systimer_rearm(dpcm);
 elapsed = dpcm->elapsed;
 dpcm->elapsed = 0;
 spin_unlock_irqrestore(&dpcm->lock, flags);
 if (elapsed)
  snd_pcm_period_elapsed(dpcm->substream);
}
