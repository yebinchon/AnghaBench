
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct es1938 {int dummy; } ;


 int snd_es1938_mixer_read (struct es1938*,unsigned char) ;
 int snd_es1938_read (struct es1938*,unsigned char) ;

__attribute__((used)) static int snd_es1938_reg_read(struct es1938 *chip, unsigned char reg)
{
 if (reg < 0xa0)
  return snd_es1938_mixer_read(chip, reg);
 else
  return snd_es1938_read(chip, reg);
}
