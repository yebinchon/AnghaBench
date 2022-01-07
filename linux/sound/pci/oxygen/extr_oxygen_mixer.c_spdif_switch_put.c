
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct snd_kcontrol {struct oxygen* private_data; } ;
struct TYPE_3__ {scalar_t__* value; } ;
struct TYPE_4__ {TYPE_1__ integer; } ;
struct snd_ctl_elem_value {TYPE_2__ value; } ;
struct oxygen {scalar_t__ spdif_playback_enable; int mutex; int reg_lock; } ;


 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int oxygen_update_spdif_source (struct oxygen*) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

__attribute__((used)) static int spdif_switch_put(struct snd_kcontrol *ctl,
       struct snd_ctl_elem_value *value)
{
 struct oxygen *chip = ctl->private_data;
 int changed;

 mutex_lock(&chip->mutex);
 changed = value->value.integer.value[0] != chip->spdif_playback_enable;
 if (changed) {
  chip->spdif_playback_enable = !!value->value.integer.value[0];
  spin_lock_irq(&chip->reg_lock);
  oxygen_update_spdif_source(chip);
  spin_unlock_irq(&chip->reg_lock);
 }
 mutex_unlock(&chip->mutex);
 return changed;
}
