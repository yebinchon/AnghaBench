
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct snd_pmac {struct pmac_tumbler* mixer_data; } ;
struct snd_kcontrol {scalar_t__ private_value; } ;
struct TYPE_3__ {int * value; } ;
struct TYPE_4__ {TYPE_1__ integer; } ;
struct snd_ctl_elem_value {TYPE_2__ value; } ;
struct pmac_tumbler {int ** mix_vol; } ;


 int ENODEV ;
 struct snd_pmac* snd_kcontrol_chip (struct snd_kcontrol*) ;

__attribute__((used)) static int snapper_get_mix(struct snd_kcontrol *kcontrol,
      struct snd_ctl_elem_value *ucontrol)
{
 int idx = (int)kcontrol->private_value;
 struct snd_pmac *chip = snd_kcontrol_chip(kcontrol);
 struct pmac_tumbler *mix;
 if (! (mix = chip->mixer_data))
  return -ENODEV;
 ucontrol->value.integer.value[0] = mix->mix_vol[idx][0];
 ucontrol->value.integer.value[1] = mix->mix_vol[idx][1];
 return 0;
}
