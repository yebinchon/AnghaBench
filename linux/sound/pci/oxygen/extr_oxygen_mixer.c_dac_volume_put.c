
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct snd_kcontrol {struct oxygen* private_data; } ;
struct TYPE_4__ {scalar_t__* value; } ;
struct TYPE_5__ {TYPE_1__ integer; } ;
struct snd_ctl_elem_value {TYPE_2__ value; } ;
struct TYPE_6__ {unsigned int dac_channels_mixer; int (* update_dac_volume ) (struct oxygen*) ;} ;
struct oxygen {scalar_t__* dac_volume; int mutex; TYPE_3__ model; } ;


 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int stub1 (struct oxygen*) ;

__attribute__((used)) static int dac_volume_put(struct snd_kcontrol *ctl,
     struct snd_ctl_elem_value *value)
{
 struct oxygen *chip = ctl->private_data;
 unsigned int i;
 int changed;

 changed = 0;
 mutex_lock(&chip->mutex);
 for (i = 0; i < chip->model.dac_channels_mixer; ++i)
  if (value->value.integer.value[i] != chip->dac_volume[i]) {
   chip->dac_volume[i] = value->value.integer.value[i];
   changed = 1;
  }
 if (changed)
  chip->model.update_dac_volume(chip);
 mutex_unlock(&chip->mutex);
 return changed;
}
