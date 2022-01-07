
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_timer_instance {struct snd_timer* timer; } ;
struct snd_timer {int lock; } ;


 unsigned long snd_timer_hw_resolution (struct snd_timer*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

unsigned long snd_timer_resolution(struct snd_timer_instance *timeri)
{
 struct snd_timer * timer;
 unsigned long ret = 0;
 unsigned long flags;

 if (timeri == ((void*)0))
  return 0;
 timer = timeri->timer;
 if (timer) {
  spin_lock_irqsave(&timer->lock, flags);
  ret = snd_timer_hw_resolution(timer);
  spin_unlock_irqrestore(&timer->lock, flags);
 }
 return ret;
}
