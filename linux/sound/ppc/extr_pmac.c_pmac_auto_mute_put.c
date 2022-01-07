
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct snd_pmac {int auto_mute; int (* update_automute ) (struct snd_pmac*,int) ;} ;
struct snd_kcontrol {int dummy; } ;
struct TYPE_3__ {int* value; } ;
struct TYPE_4__ {TYPE_1__ integer; } ;
struct snd_ctl_elem_value {TYPE_2__ value; } ;


 struct snd_pmac* snd_kcontrol_chip (struct snd_kcontrol*) ;
 int stub1 (struct snd_pmac*,int) ;

__attribute__((used)) static int pmac_auto_mute_put(struct snd_kcontrol *kcontrol,
         struct snd_ctl_elem_value *ucontrol)
{
 struct snd_pmac *chip = snd_kcontrol_chip(kcontrol);
 if (ucontrol->value.integer.value[0] != chip->auto_mute) {
  chip->auto_mute = !!ucontrol->value.integer.value[0];
  if (chip->update_automute)
   chip->update_automute(chip, 1);
  return 1;
 }
 return 0;
}
