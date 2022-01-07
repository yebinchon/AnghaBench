
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct special_params {int clk_src; } ;
struct snd_kcontrol {int dummy; } ;
struct TYPE_3__ {int * item; } ;
struct TYPE_4__ {TYPE_1__ enumerated; } ;
struct snd_ctl_elem_value {TYPE_2__ value; } ;
struct snd_bebob {struct special_params* maudio_special_quirk; } ;


 struct snd_bebob* snd_kcontrol_chip (struct snd_kcontrol*) ;

__attribute__((used)) static int special_clk_ctl_get(struct snd_kcontrol *kctl,
          struct snd_ctl_elem_value *uval)
{
 struct snd_bebob *bebob = snd_kcontrol_chip(kctl);
 struct special_params *params = bebob->maudio_special_quirk;
 uval->value.enumerated.item[0] = params->clk_src;
 return 0;
}
