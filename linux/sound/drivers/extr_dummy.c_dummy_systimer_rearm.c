
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dummy_systimer_pcm {int frac_period_rest; int rate; int timer; } ;


 scalar_t__ jiffies ;
 int mod_timer (int *,scalar_t__) ;

__attribute__((used)) static void dummy_systimer_rearm(struct dummy_systimer_pcm *dpcm)
{
 mod_timer(&dpcm->timer, jiffies +
  (dpcm->frac_period_rest + dpcm->rate - 1) / dpcm->rate);
}
