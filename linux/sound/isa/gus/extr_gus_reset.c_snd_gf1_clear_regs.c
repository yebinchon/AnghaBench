
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_gus_card {int reg_lock; } ;


 int GUSP (struct snd_gus_card*,int ) ;
 int IRQSTAT ;
 int inb (int ) ;
 int snd_gf1_write8 (struct snd_gus_card*,int,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void snd_gf1_clear_regs(struct snd_gus_card * gus)
{
 unsigned long flags;

 spin_lock_irqsave(&gus->reg_lock, flags);
 inb(GUSP(gus, IRQSTAT));
 snd_gf1_write8(gus, 0x41, 0);
 snd_gf1_write8(gus, 0x45, 0);
 snd_gf1_write8(gus, 0x49, 0);
 spin_unlock_irqrestore(&gus->reg_lock, flags);
}
