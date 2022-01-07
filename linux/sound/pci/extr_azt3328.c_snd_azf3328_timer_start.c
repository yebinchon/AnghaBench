
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_timer {int sticks; } ;
struct snd_azf3328 {int reg_lock; TYPE_1__* card; } ;
struct TYPE_2__ {int dev; } ;


 int IDX_IO_TIMER_VALUE ;
 unsigned int TIMER_COUNTDOWN_ENABLE ;
 unsigned int TIMER_IRQ_ENABLE ;
 int TIMER_VALUE_MASK ;
 int dev_dbg (int ,char*,unsigned int) ;
 int seqtimer_scaling ;
 int snd_azf3328_ctrl_outl (struct snd_azf3328*,int ,unsigned int) ;
 struct snd_azf3328* snd_timer_chip (struct snd_timer*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int
snd_azf3328_timer_start(struct snd_timer *timer)
{
 struct snd_azf3328 *chip;
 unsigned long flags;
 unsigned int delay;

 chip = snd_timer_chip(timer);
 delay = ((timer->sticks * seqtimer_scaling) - 1) & TIMER_VALUE_MASK;
 if (delay < 49) {




  dev_dbg(chip->card->dev, "delay was too low (%d)!\n", delay);
  delay = 49;
 }
 dev_dbg(chip->card->dev, "setting timer countdown value %d\n", delay);
 delay |= TIMER_COUNTDOWN_ENABLE | TIMER_IRQ_ENABLE;
 spin_lock_irqsave(&chip->reg_lock, flags);
 snd_azf3328_ctrl_outl(chip, IDX_IO_TIMER_VALUE, delay);
 spin_unlock_irqrestore(&chip->reg_lock, flags);
 return 0;
}
