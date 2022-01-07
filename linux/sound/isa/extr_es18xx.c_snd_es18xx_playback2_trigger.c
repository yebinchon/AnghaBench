
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_pcm_substream {int dummy; } ;
struct snd_es18xx {int active; } ;


 int DAC1 ;
 int EINVAL ;




 int mdelay (int) ;
 int snd_es18xx_dsp_command (struct snd_es18xx*,int) ;
 int snd_es18xx_write (struct snd_es18xx*,int,int) ;

__attribute__((used)) static int snd_es18xx_playback2_trigger(struct snd_es18xx *chip,
     struct snd_pcm_substream *substream,
     int cmd)
{
 switch (cmd) {
 case 130:
 case 131:
  if (chip->active & DAC1)
   return 0;
  chip->active |= DAC1;

                snd_es18xx_write(chip, 0xB8, 0x05);






  break;
 case 129:
 case 128:
  if (!(chip->active & DAC1))
   return 0;
  chip->active &= ~DAC1;

                snd_es18xx_write(chip, 0xB8, 0x00);






  break;
 default:
  return -EINVAL;
 }

 return 0;
}
