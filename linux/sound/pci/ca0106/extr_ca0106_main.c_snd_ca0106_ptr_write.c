
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_ca0106 {int emu_lock; scalar_t__ port; } ;


 scalar_t__ DATA ;
 scalar_t__ PTR ;
 int outl (unsigned int,scalar_t__) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

void snd_ca0106_ptr_write(struct snd_ca0106 *emu,
       unsigned int reg,
       unsigned int chn,
       unsigned int data)
{
 unsigned int regptr;
 unsigned long flags;

 regptr = (reg << 16) | chn;

 spin_lock_irqsave(&emu->emu_lock, flags);
 outl(regptr, emu->port + PTR);
 outl(data, emu->port + DATA);
 spin_unlock_irqrestore(&emu->emu_lock, flags);
}
