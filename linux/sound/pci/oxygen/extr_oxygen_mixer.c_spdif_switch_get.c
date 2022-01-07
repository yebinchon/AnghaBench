
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct snd_kcontrol {struct oxygen* private_data; } ;
struct TYPE_3__ {int * value; } ;
struct TYPE_4__ {TYPE_1__ integer; } ;
struct snd_ctl_elem_value {TYPE_2__ value; } ;
struct oxygen {int mutex; int spdif_playback_enable; } ;


 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int spdif_switch_get(struct snd_kcontrol *ctl,
       struct snd_ctl_elem_value *value)
{
 struct oxygen *chip = ctl->private_data;

 mutex_lock(&chip->mutex);
 value->value.integer.value[0] = chip->spdif_playback_enable;
 mutex_unlock(&chip->mutex);
 return 0;
}
