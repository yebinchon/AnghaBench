
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_ymfpci {int timer_ticks; int reg_lock; } ;
struct snd_timer {int sticks; } ;


 int YDSXGR_TIMERCOUNT ;
 int YDSXGR_TIMERCTRL ;
 struct snd_ymfpci* snd_timer_chip (struct snd_timer*) ;
 int snd_ymfpci_writeb (struct snd_ymfpci*,int ,int) ;
 int snd_ymfpci_writew (struct snd_ymfpci*,int ,unsigned int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int snd_ymfpci_timer_start(struct snd_timer *timer)
{
 struct snd_ymfpci *chip;
 unsigned long flags;
 unsigned int count;

 chip = snd_timer_chip(timer);
 spin_lock_irqsave(&chip->reg_lock, flags);
 if (timer->sticks > 1) {
  chip->timer_ticks = timer->sticks;
  count = timer->sticks - 1;
 } else {




  chip->timer_ticks = 2;
  count = 2 - 1;
 }
 snd_ymfpci_writew(chip, YDSXGR_TIMERCOUNT, count);
 snd_ymfpci_writeb(chip, YDSXGR_TIMERCTRL, 0x03);
 spin_unlock_irqrestore(&chip->reg_lock, flags);
 return 0;
}
