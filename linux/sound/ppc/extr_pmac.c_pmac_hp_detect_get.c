
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct snd_pmac {int (* detect_headphone ) (struct snd_pmac*) ;} ;
struct snd_kcontrol {int dummy; } ;
struct TYPE_3__ {int * value; } ;
struct TYPE_4__ {TYPE_1__ integer; } ;
struct snd_ctl_elem_value {TYPE_2__ value; } ;


 struct snd_pmac* snd_kcontrol_chip (struct snd_kcontrol*) ;
 int stub1 (struct snd_pmac*) ;

__attribute__((used)) static int pmac_hp_detect_get(struct snd_kcontrol *kcontrol,
         struct snd_ctl_elem_value *ucontrol)
{
 struct snd_pmac *chip = snd_kcontrol_chip(kcontrol);
 if (chip->detect_headphone)
  ucontrol->value.integer.value[0] = chip->detect_headphone(chip);
 else
  ucontrol->value.integer.value[0] = 0;
 return 0;
}
