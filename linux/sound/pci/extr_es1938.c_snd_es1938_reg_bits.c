
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct es1938 {int dummy; } ;


 int snd_es1938_bits (struct es1938*,unsigned char,unsigned char,unsigned char) ;
 int snd_es1938_mixer_bits (struct es1938*,unsigned char,unsigned char,unsigned char) ;

__attribute__((used)) static int snd_es1938_reg_bits(struct es1938 *chip, unsigned char reg,
          unsigned char mask, unsigned char val)
{
 if (reg < 0xa0)
  return snd_es1938_mixer_bits(chip, reg, mask, val);
 else
  return snd_es1938_bits(chip, reg, mask, val);
}
