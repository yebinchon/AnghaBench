
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct snd_soc_card {int dapm; } ;
struct snd_kcontrol {int dummy; } ;
struct TYPE_3__ {scalar_t__* item; } ;
struct TYPE_4__ {TYPE_1__ enumerated; } ;
struct snd_ctl_elem_value {TYPE_2__ value; } ;


 scalar_t__ rx51_dmic_func ;
 int rx51_ext_control (int *) ;
 struct snd_soc_card* snd_kcontrol_chip (struct snd_kcontrol*) ;

__attribute__((used)) static int rx51_set_input(struct snd_kcontrol *kcontrol,
     struct snd_ctl_elem_value *ucontrol)
{
 struct snd_soc_card *card = snd_kcontrol_chip(kcontrol);

 if (rx51_dmic_func == ucontrol->value.enumerated.item[0])
  return 0;

 rx51_dmic_func = ucontrol->value.enumerated.item[0];
 rx51_ext_control(&card->dapm);

 return 1;
}
