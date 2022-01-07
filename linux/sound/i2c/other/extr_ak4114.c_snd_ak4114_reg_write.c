
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ak4114 {unsigned char* regmap; unsigned char* txcsb; } ;


 unsigned char AK4114_REG_INT1_MASK ;
 unsigned char AK4114_REG_TXCSB0 ;
 unsigned char AK4114_REG_TXCSB4 ;
 int reg_write (struct ak4114*,unsigned char,unsigned char) ;

void snd_ak4114_reg_write(struct ak4114 *chip, unsigned char reg, unsigned char mask, unsigned char val)
{
 if (reg <= AK4114_REG_INT1_MASK)
  reg_write(chip, reg, (chip->regmap[reg] & ~mask) | val);
 else if (reg >= AK4114_REG_TXCSB0 && reg <= AK4114_REG_TXCSB4)
  reg_write(chip, reg,
     (chip->txcsb[reg-AK4114_REG_TXCSB0] & ~mask) | val);
}
