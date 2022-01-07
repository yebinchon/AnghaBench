
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct tas {int mtx; int * mixer_r; int * mixer_l; } ;
struct snd_kcontrol {int private_value; } ;
struct TYPE_3__ {int * value; } ;
struct TYPE_4__ {TYPE_1__ integer; } ;
struct snd_ctl_elem_value {TYPE_2__ value; } ;


 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct tas* snd_kcontrol_chip (struct snd_kcontrol*) ;

__attribute__((used)) static int tas_snd_mixer_get(struct snd_kcontrol *kcontrol,
 struct snd_ctl_elem_value *ucontrol)
{
 struct tas *tas = snd_kcontrol_chip(kcontrol);
 int idx = kcontrol->private_value;

 mutex_lock(&tas->mtx);
 ucontrol->value.integer.value[0] = tas->mixer_l[idx];
 ucontrol->value.integer.value[1] = tas->mixer_r[idx];
 mutex_unlock(&tas->mtx);

 return 0;
}
