
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct es1968 {int reg_lock; } ;


 int __apu_set_register (struct es1968*,int ,int ,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void apu_set_register(struct es1968 *chip, u16 channel, u8 reg, u16 data)
{
 unsigned long flags;
 spin_lock_irqsave(&chip->reg_lock, flags);
 __apu_set_register(chip, channel, reg, data);
 spin_unlock_irqrestore(&chip->reg_lock, flags);
}
