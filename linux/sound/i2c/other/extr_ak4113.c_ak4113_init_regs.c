
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ak4113 {unsigned char* regmap; } ;


 unsigned char AK4113_PWN ;
 size_t AK4113_REG_PWRDN ;
 unsigned char AK4113_RST ;
 unsigned char AK4113_WRITABLE_REGS ;
 int reg_write (struct ak4113*,size_t,unsigned char) ;
 int udelay (int) ;

__attribute__((used)) static void ak4113_init_regs(struct ak4113 *chip)
{
 unsigned char old = chip->regmap[AK4113_REG_PWRDN], reg;


 reg_write(chip, AK4113_REG_PWRDN, old & ~(AK4113_RST|AK4113_PWN));
 udelay(200);

 reg_write(chip, AK4113_REG_PWRDN, (old | AK4113_RST) & ~AK4113_PWN);
 udelay(200);
 for (reg = 1; reg < AK4113_WRITABLE_REGS; reg++)
  reg_write(chip, reg, chip->regmap[reg]);

 reg_write(chip, AK4113_REG_PWRDN, old | AK4113_RST | AK4113_PWN);
}
