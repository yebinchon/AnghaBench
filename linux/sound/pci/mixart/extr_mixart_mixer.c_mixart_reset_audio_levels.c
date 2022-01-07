
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_mixart {int chip_idx; } ;


 int mixart_update_analog_audio_level (struct snd_mixart*,int) ;

__attribute__((used)) static void mixart_reset_audio_levels(struct snd_mixart *chip)
{

 mixart_update_analog_audio_level(chip, 0);

 if(chip->chip_idx < 2) {
  mixart_update_analog_audio_level(chip, 1);
 }
 return;
}
