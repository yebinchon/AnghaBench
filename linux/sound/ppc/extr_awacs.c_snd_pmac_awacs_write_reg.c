
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_pmac {int* awacs_reg; } ;


 int snd_pmac_awacs_write (struct snd_pmac*,int) ;

__attribute__((used)) static void
snd_pmac_awacs_write_reg(struct snd_pmac *chip, int reg, int val)
{
 snd_pmac_awacs_write(chip, val | (reg << 12));
 chip->awacs_reg[reg] = val;
}
