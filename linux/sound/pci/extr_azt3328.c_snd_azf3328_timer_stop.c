
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_timer {int dummy; } ;
struct snd_azf3328 {int reg_lock; } ;


 scalar_t__ IDX_IO_TIMER_VALUE ;
 int snd_azf3328_ctrl_outb (struct snd_azf3328*,scalar_t__,int) ;
 struct snd_azf3328* snd_timer_chip (struct snd_timer*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int
snd_azf3328_timer_stop(struct snd_timer *timer)
{
 struct snd_azf3328 *chip;
 unsigned long flags;

 chip = snd_timer_chip(timer);
 spin_lock_irqsave(&chip->reg_lock, flags);







 snd_azf3328_ctrl_outb(chip, IDX_IO_TIMER_VALUE + 3, 0x04);
 spin_unlock_irqrestore(&chip->reg_lock, flags);
 return 0;
}
