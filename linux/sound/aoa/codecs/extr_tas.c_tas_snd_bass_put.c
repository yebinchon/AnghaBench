
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct tas {scalar_t__ bass; int mtx; scalar_t__ hw_enabled; } ;
struct snd_kcontrol {int dummy; } ;
struct TYPE_3__ {scalar_t__* value; } ;
struct TYPE_4__ {TYPE_1__ integer; } ;
struct snd_ctl_elem_value {TYPE_2__ value; } ;


 int EINVAL ;
 scalar_t__ TAS3004_BASS_MAX ;
 scalar_t__ TAS3004_BASS_MIN ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct tas* snd_kcontrol_chip (struct snd_kcontrol*) ;
 int tas_set_bass (struct tas*) ;

__attribute__((used)) static int tas_snd_bass_put(struct snd_kcontrol *kcontrol,
 struct snd_ctl_elem_value *ucontrol)
{
 struct tas *tas = snd_kcontrol_chip(kcontrol);

 if (ucontrol->value.integer.value[0] < TAS3004_BASS_MIN ||
     ucontrol->value.integer.value[0] > TAS3004_BASS_MAX)
  return -EINVAL;
 mutex_lock(&tas->mtx);
 if (tas->bass == ucontrol->value.integer.value[0]) {
  mutex_unlock(&tas->mtx);
  return 0;
 }

 tas->bass = ucontrol->value.integer.value[0];
 if (tas->hw_enabled)
  tas_set_bass(tas);
 mutex_unlock(&tas->mtx);
 return 1;
}
