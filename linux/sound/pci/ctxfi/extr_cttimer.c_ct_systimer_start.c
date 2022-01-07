
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_pcm_runtime {int period_size; int rate; } ;
struct ct_timer_instance {int running; int lock; int timer; TYPE_1__* substream; } ;
struct TYPE_2__ {struct snd_pcm_runtime* runtime; } ;


 int HZ ;
 scalar_t__ jiffies ;
 int mod_timer (int *,scalar_t__) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void ct_systimer_start(struct ct_timer_instance *ti)
{
 struct snd_pcm_runtime *runtime = ti->substream->runtime;
 unsigned long flags;

 spin_lock_irqsave(&ti->lock, flags);
 ti->running = 1;
 mod_timer(&ti->timer,
    jiffies + (runtime->period_size * HZ +
        (runtime->rate - 1)) / runtime->rate);
 spin_unlock_irqrestore(&ti->lock, flags);
}
