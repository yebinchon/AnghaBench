
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_pdacf {unsigned short* regmap; scalar_t__ port; } ;


 int outw (unsigned short,scalar_t__) ;

__attribute__((used)) static inline void pdacf_reg_write(struct snd_pdacf *chip, unsigned char reg, unsigned short val)
{
 outw(chip->regmap[reg>>1] = val, chip->port + reg);
}
