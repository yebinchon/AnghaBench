
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct snd_soc_card {int dapm; } ;
struct snd_kcontrol {int dummy; } ;
struct TYPE_3__ {scalar_t__* value; } ;
struct TYPE_4__ {TYPE_1__ integer; } ;
struct snd_ctl_elem_value {TYPE_2__ value; } ;


 int magician_ext_control (int *) ;
 scalar_t__ magician_hp_switch ;
 struct snd_soc_card* snd_kcontrol_chip (struct snd_kcontrol*) ;

__attribute__((used)) static int magician_set_hp(struct snd_kcontrol *kcontrol,
        struct snd_ctl_elem_value *ucontrol)
{
 struct snd_soc_card *card = snd_kcontrol_chip(kcontrol);

 if (magician_hp_switch == ucontrol->value.integer.value[0])
  return 0;

 magician_hp_switch = ucontrol->value.integer.value[0];
 magician_ext_control(&card->dapm);
 return 1;
}
