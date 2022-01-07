
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct snd_soc_dapm_context {int dummy; } ;
struct snd_soc_card {struct snd_soc_dapm_context dapm; } ;
struct snd_kcontrol {int dummy; } ;
struct TYPE_3__ {unsigned short* item; } ;
struct TYPE_4__ {TYPE_1__ enumerated; } ;
struct snd_ctl_elem_value {TYPE_2__ value; } ;


 unsigned short AMS_DELTA_AGC ;
 unsigned short AMS_DELTA_EARPIECE ;
 unsigned short AMS_DELTA_MICROPHONE ;
 unsigned short AMS_DELTA_MOUTHPIECE ;
 unsigned short AMS_DELTA_SPEAKER ;
 unsigned short ARRAY_SIZE (int ) ;
 int EINVAL ;
 unsigned short ams_delta_audio_agc ;
 int ams_delta_audio_mode ;
 unsigned short* ams_delta_audio_mode_pins ;
 struct snd_soc_card* snd_kcontrol_chip (struct snd_kcontrol*) ;
 unsigned short snd_soc_dapm_get_pin_status (struct snd_soc_dapm_context*,char*) ;

__attribute__((used)) static int ams_delta_get_audio_mode(struct snd_kcontrol *kcontrol,
     struct snd_ctl_elem_value *ucontrol)
{
 struct snd_soc_card *card = snd_kcontrol_chip(kcontrol);
 struct snd_soc_dapm_context *dapm = &card->dapm;
 unsigned short pins, mode;

 pins = ((snd_soc_dapm_get_pin_status(dapm, "Mouthpiece") <<
       AMS_DELTA_MOUTHPIECE) |
   (snd_soc_dapm_get_pin_status(dapm, "Earpiece") <<
       AMS_DELTA_EARPIECE));
 if (pins)
  pins |= (snd_soc_dapm_get_pin_status(dapm, "Microphone") <<
       AMS_DELTA_MICROPHONE);
 else
  pins = ((snd_soc_dapm_get_pin_status(dapm, "Microphone") <<
       AMS_DELTA_MICROPHONE) |
   (snd_soc_dapm_get_pin_status(dapm, "Speaker") <<
       AMS_DELTA_SPEAKER) |
   (ams_delta_audio_agc << AMS_DELTA_AGC));

 for (mode = 0; mode < ARRAY_SIZE(ams_delta_audio_mode); mode++)
  if (pins == ams_delta_audio_mode_pins[mode])
   break;

 if (mode >= ARRAY_SIZE(ams_delta_audio_mode))
  return -EINVAL;

 ucontrol->value.enumerated.item[0] = mode;

 return 0;
}
