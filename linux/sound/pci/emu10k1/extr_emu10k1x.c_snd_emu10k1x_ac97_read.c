
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_ac97 {struct emu10k1x* private_data; } ;
struct emu10k1x {int emu_lock; scalar_t__ port; } ;


 scalar_t__ AC97ADDRESS ;
 scalar_t__ AC97DATA ;
 unsigned short inw (scalar_t__) ;
 int outb (unsigned short,scalar_t__) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static unsigned short snd_emu10k1x_ac97_read(struct snd_ac97 *ac97,
          unsigned short reg)
{
 struct emu10k1x *emu = ac97->private_data;
 unsigned long flags;
 unsigned short val;

 spin_lock_irqsave(&emu->emu_lock, flags);
 outb(reg, emu->port + AC97ADDRESS);
 val = inw(emu->port + AC97DATA);
 spin_unlock_irqrestore(&emu->emu_lock, flags);
 return val;
}
