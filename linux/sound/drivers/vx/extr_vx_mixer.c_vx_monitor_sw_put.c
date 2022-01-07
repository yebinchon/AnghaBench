
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct vx_core {scalar_t__* audio_monitor_active; int mixer_mutex; int * audio_monitor; } ;
struct snd_kcontrol {int private_value; } ;
struct TYPE_3__ {scalar_t__* value; } ;
struct TYPE_4__ {TYPE_1__ integer; } ;
struct snd_ctl_elem_value {TYPE_2__ value; } ;


 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct vx_core* snd_kcontrol_chip (struct snd_kcontrol*) ;
 int vx_set_monitor_level (struct vx_core*,int,int ,int) ;

__attribute__((used)) static int vx_monitor_sw_put(struct snd_kcontrol *kcontrol, struct snd_ctl_elem_value *ucontrol)
{
 struct vx_core *chip = snd_kcontrol_chip(kcontrol);
 int audio = kcontrol->private_value & 0xff;

 mutex_lock(&chip->mixer_mutex);
 if (ucontrol->value.integer.value[0] != chip->audio_monitor_active[audio] ||
     ucontrol->value.integer.value[1] != chip->audio_monitor_active[audio+1]) {
  vx_set_monitor_level(chip, audio, chip->audio_monitor[audio],
         !!ucontrol->value.integer.value[0]);
  vx_set_monitor_level(chip, audio+1, chip->audio_monitor[audio+1],
         !!ucontrol->value.integer.value[1]);
  mutex_unlock(&chip->mixer_mutex);
  return 1;
 }
 mutex_unlock(&chip->mixer_mutex);
 return 0;
}
