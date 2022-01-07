
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ak4113 {unsigned char* regmap; } ;


 unsigned char AK4113_WRITABLE_REGS ;
 int reg_write (struct ak4113*,unsigned char,unsigned char) ;

void snd_ak4113_reg_write(struct ak4113 *chip, unsigned char reg,
  unsigned char mask, unsigned char val)
{
 if (reg >= AK4113_WRITABLE_REGS)
  return;
 reg_write(chip, reg, (chip->regmap[reg] & ~mask) | val);
}
