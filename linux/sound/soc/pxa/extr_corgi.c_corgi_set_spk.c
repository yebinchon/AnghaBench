
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


 int corgi_ext_control (int *) ;
 scalar_t__ corgi_spk_func ;
 struct snd_soc_card* snd_kcontrol_chip (struct snd_kcontrol*) ;

__attribute__((used)) static int corgi_set_spk(struct snd_kcontrol *kcontrol,
 struct snd_ctl_elem_value *ucontrol)
{
 struct snd_soc_card *card = snd_kcontrol_chip(kcontrol);

 if (corgi_spk_func == ucontrol->value.enumerated.item[0])
  return 0;

 corgi_spk_func = ucontrol->value.enumerated.item[0];
 corgi_ext_control(&card->dapm);
 return 1;
}
