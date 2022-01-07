
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct snd_pcxhr {scalar_t__* monitoring_volume; TYPE_3__* mgr; scalar_t__* monitoring_active; } ;
struct snd_kcontrol {int dummy; } ;
struct TYPE_4__ {scalar_t__* value; } ;
struct TYPE_5__ {TYPE_1__ integer; } ;
struct snd_ctl_elem_value {TYPE_2__ value; } ;
struct TYPE_6__ {int mixer_mutex; } ;


 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int pcxhr_update_audio_pipe_level (struct snd_pcxhr*,int ,int) ;
 struct snd_pcxhr* snd_kcontrol_chip (struct snd_kcontrol*) ;

__attribute__((used)) static int pcxhr_monitor_vol_put(struct snd_kcontrol *kcontrol,
     struct snd_ctl_elem_value *ucontrol)
{
 struct snd_pcxhr *chip = snd_kcontrol_chip(kcontrol);
 int changed = 0;
 int i;

 mutex_lock(&chip->mgr->mixer_mutex);
 for (i = 0; i < 2; i++) {
  if (chip->monitoring_volume[i] !=
      ucontrol->value.integer.value[i]) {
   chip->monitoring_volume[i] =
    ucontrol->value.integer.value[i];
   if (chip->monitoring_active[i])


    pcxhr_update_audio_pipe_level(chip, 0, i);
   changed = 1;
  }
 }
 mutex_unlock(&chip->mgr->mixer_mutex);
 return changed;
}
