
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fm801 {int reg_lock; } ;


 unsigned short fm801_ioread16 (struct fm801*,unsigned short) ;
 int fm801_iowrite16 (struct fm801*,unsigned short,unsigned short) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int snd_fm801_update_bits(struct fm801 *chip, unsigned short reg,
     unsigned short mask, unsigned short value)
{
 int change;
 unsigned long flags;
 unsigned short old, new;

 spin_lock_irqsave(&chip->reg_lock, flags);
 old = fm801_ioread16(chip, reg);
 new = (old & ~mask) | value;
 change = old != new;
 if (change)
  fm801_iowrite16(chip, reg, new);
 spin_unlock_irqrestore(&chip->reg_lock, flags);
 return change;
}
