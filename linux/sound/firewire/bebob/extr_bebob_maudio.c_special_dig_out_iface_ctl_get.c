
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct special_params {int dig_out_fmt; } ;
struct snd_kcontrol {int dummy; } ;
struct TYPE_3__ {int * item; } ;
struct TYPE_4__ {TYPE_1__ enumerated; } ;
struct snd_ctl_elem_value {TYPE_2__ value; } ;
struct snd_bebob {int mutex; struct special_params* maudio_special_quirk; } ;


 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct snd_bebob* snd_kcontrol_chip (struct snd_kcontrol*) ;

__attribute__((used)) static int special_dig_out_iface_ctl_get(struct snd_kcontrol *kctl,
      struct snd_ctl_elem_value *uval)
{
 struct snd_bebob *bebob = snd_kcontrol_chip(kctl);
 struct special_params *params = bebob->maudio_special_quirk;
 mutex_lock(&bebob->mutex);
 uval->value.enumerated.item[0] = params->dig_out_fmt;
 mutex_unlock(&bebob->mutex);
 return 0;
}
