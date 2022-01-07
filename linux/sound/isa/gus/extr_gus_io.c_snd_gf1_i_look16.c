
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_gus_card {int reg_lock; } ;


 unsigned short __snd_gf1_look16 (struct snd_gus_card*,unsigned char) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

unsigned short snd_gf1_i_look16(struct snd_gus_card * gus, unsigned char reg)
{
 unsigned long flags;
 unsigned short res;

 spin_lock_irqsave(&gus->reg_lock, flags);
 res = __snd_gf1_look16(gus, reg);
 spin_unlock_irqrestore(&gus->reg_lock, flags);
 return res;
}
