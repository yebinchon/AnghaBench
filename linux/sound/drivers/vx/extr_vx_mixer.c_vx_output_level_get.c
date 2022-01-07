
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct vx_core {int mixer_mutex; int ** output_level; } ;
struct TYPE_6__ {int index; } ;
struct snd_kcontrol {TYPE_3__ id; } ;
struct TYPE_4__ {int * value; } ;
struct TYPE_5__ {TYPE_1__ integer; } ;
struct snd_ctl_elem_value {TYPE_2__ value; } ;


 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct vx_core* snd_kcontrol_chip (struct snd_kcontrol*) ;

__attribute__((used)) static int vx_output_level_get(struct snd_kcontrol *kcontrol, struct snd_ctl_elem_value *ucontrol)
{
 struct vx_core *chip = snd_kcontrol_chip(kcontrol);
 int codec = kcontrol->id.index;
 mutex_lock(&chip->mixer_mutex);
 ucontrol->value.integer.value[0] = chip->output_level[codec][0];
 ucontrol->value.integer.value[1] = chip->output_level[codec][1];
 mutex_unlock(&chip->mixer_mutex);
 return 0;
}
