
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_timer {int dummy; } ;
struct snd_ad1816a {int lock; } ;


 int AD1816A_INTERRUPT_ENABLE ;
 int AD1816A_TIMER_ENABLE ;
 int snd_ad1816a_write_mask (struct snd_ad1816a*,int ,int ,int) ;
 struct snd_ad1816a* snd_timer_chip (struct snd_timer*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int snd_ad1816a_timer_stop(struct snd_timer *timer)
{
 unsigned long flags;
 struct snd_ad1816a *chip = snd_timer_chip(timer);
 spin_lock_irqsave(&chip->lock, flags);

 snd_ad1816a_write_mask(chip, AD1816A_INTERRUPT_ENABLE,
  AD1816A_TIMER_ENABLE, 0x0000);

 spin_unlock_irqrestore(&chip->lock, flags);
 return 0;
}
