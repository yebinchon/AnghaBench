
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct snd_pmac {struct pmac_tumbler* mixer_data; } ;
struct snd_kcontrol {int dummy; } ;
struct TYPE_3__ {scalar_t__* value; } ;
struct TYPE_4__ {TYPE_1__ integer; } ;
struct snd_ctl_elem_value {TYPE_2__ value; } ;
struct pmac_tumbler {scalar_t__* master_switch; } ;


 struct snd_pmac* snd_kcontrol_chip (struct snd_kcontrol*) ;
 int tumbler_set_master_volume (struct pmac_tumbler*) ;

__attribute__((used)) static int tumbler_put_master_switch(struct snd_kcontrol *kcontrol,
         struct snd_ctl_elem_value *ucontrol)
{
 struct snd_pmac *chip = snd_kcontrol_chip(kcontrol);
 struct pmac_tumbler *mix = chip->mixer_data;
 int change;

 change = mix->master_switch[0] != ucontrol->value.integer.value[0] ||
  mix->master_switch[1] != ucontrol->value.integer.value[1];
 if (change) {
  mix->master_switch[0] = !!ucontrol->value.integer.value[0];
  mix->master_switch[1] = !!ucontrol->value.integer.value[1];
  tumbler_set_master_volume(mix);
 }
 return change;
}
