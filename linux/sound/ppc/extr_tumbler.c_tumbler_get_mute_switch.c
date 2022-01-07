
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct snd_pmac {struct pmac_tumbler* mixer_data; } ;
struct snd_kcontrol {int private_value; } ;
struct TYPE_3__ {int* value; } ;
struct TYPE_4__ {TYPE_1__ integer; } ;
struct snd_ctl_elem_value {TYPE_2__ value; } ;
struct pmac_gpio {int dummy; } ;
struct pmac_tumbler {struct pmac_gpio line_mute; struct pmac_gpio amp_mute; struct pmac_gpio hp_mute; } ;


 int EINVAL ;
 int ENODEV ;



 int check_audio_gpio (struct pmac_gpio*) ;
 struct snd_pmac* snd_kcontrol_chip (struct snd_kcontrol*) ;

__attribute__((used)) static int tumbler_get_mute_switch(struct snd_kcontrol *kcontrol,
       struct snd_ctl_elem_value *ucontrol)
{
 struct snd_pmac *chip = snd_kcontrol_chip(kcontrol);
 struct pmac_tumbler *mix;
 struct pmac_gpio *gp;
 if (! (mix = chip->mixer_data))
  return -ENODEV;
 switch(kcontrol->private_value) {
 case 129:
  gp = &mix->hp_mute; break;
 case 130:
  gp = &mix->amp_mute; break;
 case 128:
  gp = &mix->line_mute; break;
 default:
  gp = ((void*)0);
 }
 if (gp == ((void*)0))
  return -EINVAL;
 ucontrol->value.integer.value[0] = !check_audio_gpio(gp);
 return 0;
}
