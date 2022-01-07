
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_pcm_substream {int dummy; } ;
struct snd_es18xx {int active; int dma2; int caps; int audio2_vol; } ;


 int DAC2 ;
 int EINVAL ;
 int ES18XX_PCM2 ;




 int mdelay (int) ;
 int snd_es18xx_dsp_command (struct snd_es18xx*,int) ;
 int snd_es18xx_mixer_write (struct snd_es18xx*,int,int) ;

__attribute__((used)) static int snd_es18xx_playback1_trigger(struct snd_es18xx *chip,
     struct snd_pcm_substream *substream,
     int cmd)
{
 switch (cmd) {
 case 130:
 case 131:
  if (chip->active & DAC2)
   return 0;
  chip->active |= DAC2;

  if (chip->dma2 >= 4)
   snd_es18xx_mixer_write(chip, 0x78, 0xb3);
  else
   snd_es18xx_mixer_write(chip, 0x78, 0x93);
  break;
 case 129:
 case 128:
  if (!(chip->active & DAC2))
   return 0;
  chip->active &= ~DAC2;

                snd_es18xx_mixer_write(chip, 0x78, 0x00);
  break;
 default:
  return -EINVAL;
 }

 return 0;
}
