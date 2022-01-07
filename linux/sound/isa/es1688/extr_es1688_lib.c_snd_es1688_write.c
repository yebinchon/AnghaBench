
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_es1688 {int dummy; } ;


 int snd_es1688_dsp_command (struct snd_es1688*,unsigned char) ;

__attribute__((used)) static int snd_es1688_write(struct snd_es1688 *chip,
       unsigned char reg, unsigned char data)
{
 if (!snd_es1688_dsp_command(chip, reg))
  return 0;
 return snd_es1688_dsp_command(chip, data);
}
