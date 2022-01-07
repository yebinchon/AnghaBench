
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct vx_core {unsigned int** output_level; int mixer_mutex; TYPE_2__* hw; } ;
struct TYPE_5__ {int index; } ;
struct snd_kcontrol {TYPE_1__ id; } ;
struct TYPE_7__ {unsigned int* value; } ;
struct TYPE_8__ {TYPE_3__ integer; } ;
struct snd_ctl_elem_value {TYPE_4__ value; } ;
struct TYPE_6__ {unsigned int output_level_max; } ;


 int EINVAL ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct vx_core* snd_kcontrol_chip (struct snd_kcontrol*) ;
 int vx_set_analog_output_level (struct vx_core*,int,unsigned int,unsigned int) ;

__attribute__((used)) static int vx_output_level_put(struct snd_kcontrol *kcontrol, struct snd_ctl_elem_value *ucontrol)
{
 struct vx_core *chip = snd_kcontrol_chip(kcontrol);
 int codec = kcontrol->id.index;
 unsigned int val[2], vmax;

 vmax = chip->hw->output_level_max;
 val[0] = ucontrol->value.integer.value[0];
 val[1] = ucontrol->value.integer.value[1];
 if (val[0] > vmax || val[1] > vmax)
  return -EINVAL;
 mutex_lock(&chip->mixer_mutex);
 if (val[0] != chip->output_level[codec][0] ||
     val[1] != chip->output_level[codec][1]) {
  vx_set_analog_output_level(chip, codec, val[0], val[1]);
  chip->output_level[codec][0] = val[0];
  chip->output_level[codec][1] = val[1];
  mutex_unlock(&chip->mixer_mutex);
  return 1;
 }
 mutex_unlock(&chip->mixer_mutex);
 return 0;
}
