
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_ymfpci {int reg_lock; } ;
struct snd_timer {int dummy; } ;


 int YDSXGR_TIMERCTRL ;
 struct snd_ymfpci* snd_timer_chip (struct snd_timer*) ;
 int snd_ymfpci_writeb (struct snd_ymfpci*,int ,int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int snd_ymfpci_timer_stop(struct snd_timer *timer)
{
 struct snd_ymfpci *chip;
 unsigned long flags;

 chip = snd_timer_chip(timer);
 spin_lock_irqsave(&chip->reg_lock, flags);
 snd_ymfpci_writeb(chip, YDSXGR_TIMERCTRL, 0x00);
 spin_unlock_irqrestore(&chip->reg_lock, flags);
 return 0;
}
