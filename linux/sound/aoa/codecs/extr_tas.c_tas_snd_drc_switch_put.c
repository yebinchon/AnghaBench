
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct tas {int drc_enabled; int mtx; scalar_t__ hw_enabled; } ;
struct snd_kcontrol {int dummy; } ;
struct TYPE_4__ {int* value; } ;
struct TYPE_3__ {TYPE_2__ integer; } ;
struct snd_ctl_elem_value {TYPE_1__ value; } ;


 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct tas* snd_kcontrol_chip (struct snd_kcontrol*) ;
 int tas3004_set_drc (struct tas*) ;

__attribute__((used)) static int tas_snd_drc_switch_put(struct snd_kcontrol *kcontrol,
 struct snd_ctl_elem_value *ucontrol)
{
 struct tas *tas = snd_kcontrol_chip(kcontrol);

 mutex_lock(&tas->mtx);
 if (tas->drc_enabled == ucontrol->value.integer.value[0]) {
  mutex_unlock(&tas->mtx);
  return 0;
 }

 tas->drc_enabled = !!ucontrol->value.integer.value[0];
 if (tas->hw_enabled)
  tas3004_set_drc(tas);
 mutex_unlock(&tas->mtx);
 return 1;
}
