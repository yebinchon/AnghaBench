
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_pmac {struct pmac_tumbler* mixer_data; } ;
struct pmac_tumbler {int audio_reset; int amp_mute; int hp_mute; scalar_t__ anded_reset; } ;


 int DBG (char*) ;
 int msleep (int) ;
 int write_audio_gpio (int *,int) ;

__attribute__((used)) static void tumbler_reset_audio(struct snd_pmac *chip)
{
 struct pmac_tumbler *mix = chip->mixer_data;

 if (mix->anded_reset) {
  DBG("(I) codec anded reset !\n");
  write_audio_gpio(&mix->hp_mute, 0);
  write_audio_gpio(&mix->amp_mute, 0);
  msleep(200);
  write_audio_gpio(&mix->hp_mute, 1);
  write_audio_gpio(&mix->amp_mute, 1);
  msleep(100);
  write_audio_gpio(&mix->hp_mute, 0);
  write_audio_gpio(&mix->amp_mute, 0);
  msleep(100);
 } else {
  DBG("(I) codec normal reset !\n");

  write_audio_gpio(&mix->audio_reset, 0);
  msleep(200);
  write_audio_gpio(&mix->audio_reset, 1);
  msleep(100);
  write_audio_gpio(&mix->audio_reset, 0);
  msleep(100);
 }
}
