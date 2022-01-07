
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct es1968 {int reg_lock; scalar_t__ io_port; } ;


 scalar_t__ WC_DATA ;
 scalar_t__ WC_INDEX ;
 int inw (scalar_t__) ;
 int outw (int ,scalar_t__) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static u16 wave_get_register(struct es1968 *chip, u16 reg)
{
 unsigned long flags;
 u16 value;

 spin_lock_irqsave(&chip->reg_lock, flags);
 outw(reg, chip->io_port + WC_INDEX);
 value = inw(chip->io_port + WC_DATA);
 spin_unlock_irqrestore(&chip->reg_lock, flags);

 return value;
}
