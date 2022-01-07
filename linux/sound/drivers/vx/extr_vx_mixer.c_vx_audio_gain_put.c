
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct vx_core {unsigned int** audio_gain; int mixer_mutex; } ;
struct snd_kcontrol {int private_value; } ;
struct TYPE_3__ {unsigned int* value; } ;
struct TYPE_4__ {TYPE_1__ integer; } ;
struct snd_ctl_elem_value {TYPE_2__ value; } ;


 unsigned int CVAL_MAX ;
 int EINVAL ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct vx_core* snd_kcontrol_chip (struct snd_kcontrol*) ;
 int vx_set_audio_gain (struct vx_core*,int,int,unsigned int) ;

__attribute__((used)) static int vx_audio_gain_put(struct snd_kcontrol *kcontrol, struct snd_ctl_elem_value *ucontrol)
{
 struct vx_core *chip = snd_kcontrol_chip(kcontrol);
 int audio = kcontrol->private_value & 0xff;
 int capture = (kcontrol->private_value >> 8) & 1;
 unsigned int val[2];

 val[0] = ucontrol->value.integer.value[0];
 val[1] = ucontrol->value.integer.value[1];
 if (val[0] > CVAL_MAX || val[1] > CVAL_MAX)
  return -EINVAL;
 mutex_lock(&chip->mixer_mutex);
 if (val[0] != chip->audio_gain[capture][audio] ||
     val[1] != chip->audio_gain[capture][audio+1]) {
  vx_set_audio_gain(chip, audio, capture, val[0]);
  vx_set_audio_gain(chip, audio+1, capture, val[1]);
  mutex_unlock(&chip->mixer_mutex);
  return 1;
 }
 mutex_unlock(&chip->mixer_mutex);
 return 0;
}
