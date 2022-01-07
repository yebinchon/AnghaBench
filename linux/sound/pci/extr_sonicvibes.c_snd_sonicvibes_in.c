
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sonicvibes {int reg_lock; } ;


 int DATA ;
 int INDEX ;
 int SV_REG (struct sonicvibes*,int ) ;
 unsigned char inb (int ) ;
 int outb (unsigned char,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int udelay (int) ;

__attribute__((used)) static unsigned char snd_sonicvibes_in(struct sonicvibes * sonic, unsigned char reg)
{
 unsigned long flags;
 unsigned char value;

 spin_lock_irqsave(&sonic->reg_lock, flags);
 outb(reg, SV_REG(sonic, INDEX));
 udelay(10);
 value = inb(SV_REG(sonic, DATA));
 udelay(10);
 spin_unlock_irqrestore(&sonic->reg_lock, flags);
 return value;
}
