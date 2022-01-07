
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_cs46xx {struct snd_ac97** ac97; int * eapd_switch; } ;
struct snd_ac97 {struct snd_cs46xx* private_data; } ;


 size_t CS46XX_PRIMARY_CODEC_INDEX ;
 size_t CS46XX_SECONDARY_CODEC_INDEX ;
 scalar_t__ snd_BUG_ON (int) ;

__attribute__((used)) static void snd_cs46xx_mixer_free_ac97(struct snd_ac97 *ac97)
{
 struct snd_cs46xx *chip = ac97->private_data;

 if (snd_BUG_ON(ac97 != chip->ac97[CS46XX_PRIMARY_CODEC_INDEX] &&
         ac97 != chip->ac97[CS46XX_SECONDARY_CODEC_INDEX]))
  return;

 if (ac97 == chip->ac97[CS46XX_PRIMARY_CODEC_INDEX]) {
  chip->ac97[CS46XX_PRIMARY_CODEC_INDEX] = ((void*)0);
  chip->eapd_switch = ((void*)0);
 }
 else
  chip->ac97[CS46XX_SECONDARY_CODEC_INDEX] = ((void*)0);
}
