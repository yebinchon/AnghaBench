
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_timer {unsigned int sticks; } ;
struct snd_cs4231 {int* image; int lock; } ;


 size_t CS4231_ALT_FEATURE_1 ;
 int CS4231_TIMER_ENABLE ;
 size_t CS4231_TIMER_HIGH ;
 size_t CS4231_TIMER_LOW ;
 int snd_cs4231_out (struct snd_cs4231*,size_t,int) ;
 struct snd_cs4231* snd_timer_chip (struct snd_timer*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int snd_cs4231_timer_start(struct snd_timer *timer)
{
 unsigned long flags;
 unsigned int ticks;
 struct snd_cs4231 *chip = snd_timer_chip(timer);

 spin_lock_irqsave(&chip->lock, flags);
 ticks = timer->sticks;
 if ((chip->image[CS4231_ALT_FEATURE_1] & CS4231_TIMER_ENABLE) == 0 ||
     (unsigned char)(ticks >> 8) != chip->image[CS4231_TIMER_HIGH] ||
     (unsigned char)ticks != chip->image[CS4231_TIMER_LOW]) {
  snd_cs4231_out(chip, CS4231_TIMER_HIGH,
          chip->image[CS4231_TIMER_HIGH] =
          (unsigned char) (ticks >> 8));
  snd_cs4231_out(chip, CS4231_TIMER_LOW,
          chip->image[CS4231_TIMER_LOW] =
          (unsigned char) ticks);
  snd_cs4231_out(chip, CS4231_ALT_FEATURE_1,
          chip->image[CS4231_ALT_FEATURE_1] |
     CS4231_TIMER_ENABLE);
 }
 spin_unlock_irqrestore(&chip->lock, flags);

 return 0;
}
