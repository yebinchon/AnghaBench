
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_card {int number; } ;


 int EINVAL ;
 int SNDRV_MINOR_OSS (int ,int ) ;
 int SNDRV_MINOR_OSS_DMFM ;
 int SNDRV_MINOR_OSS_MIDI ;
 int SNDRV_MINOR_OSS_MIDI1 ;
 int SNDRV_MINOR_OSS_MIXER ;
 int SNDRV_MINOR_OSS_MIXER1 ;
 int SNDRV_MINOR_OSS_MUSIC ;
 int SNDRV_MINOR_OSS_PCM ;
 int SNDRV_MINOR_OSS_PCM1 ;
 int SNDRV_MINOR_OSS_SEQUENCER ;
 int SNDRV_MINOR_OSS_SNDSTAT ;







 int SNDRV_OSS_MINORS ;
 int snd_BUG_ON (int) ;

__attribute__((used)) static int snd_oss_kernel_minor(int type, struct snd_card *card, int dev)
{
 int minor;

 switch (type) {
 case 132:
  if (snd_BUG_ON(!card || dev < 0 || dev > 1))
   return -EINVAL;
  minor = SNDRV_MINOR_OSS(card->number, (dev ? SNDRV_MINOR_OSS_MIXER1 : SNDRV_MINOR_OSS_MIXER));
  break;
 case 129:
  minor = SNDRV_MINOR_OSS_SEQUENCER;
  break;
 case 131:
  minor = SNDRV_MINOR_OSS_MUSIC;
  break;
 case 130:
  if (snd_BUG_ON(!card || dev < 0 || dev > 1))
   return -EINVAL;
  minor = SNDRV_MINOR_OSS(card->number, (dev ? SNDRV_MINOR_OSS_PCM1 : SNDRV_MINOR_OSS_PCM));
  break;
 case 133:
  if (snd_BUG_ON(!card || dev < 0 || dev > 1))
   return -EINVAL;
  minor = SNDRV_MINOR_OSS(card->number, (dev ? SNDRV_MINOR_OSS_MIDI1 : SNDRV_MINOR_OSS_MIDI));
  break;
 case 134:
  minor = SNDRV_MINOR_OSS(card->number, SNDRV_MINOR_OSS_DMFM);
  break;
 case 128:
  minor = SNDRV_MINOR_OSS_SNDSTAT;
  break;
 default:
  return -EINVAL;
 }
 if (minor < 0 || minor >= SNDRV_OSS_MINORS)
  return -EINVAL;
 return minor;
}
