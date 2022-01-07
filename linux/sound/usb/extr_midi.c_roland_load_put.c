
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct snd_usb_midi {int mutex; } ;
struct snd_kcontrol {int private_value; struct snd_usb_midi* private_data; } ;
struct TYPE_3__ {int* item; } ;
struct TYPE_4__ {TYPE_1__ enumerated; } ;
struct snd_ctl_elem_value {TYPE_2__ value; } ;


 int EINVAL ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int roland_load_put(struct snd_kcontrol *kcontrol,
      struct snd_ctl_elem_value *value)
{
 struct snd_usb_midi *umidi = kcontrol->private_data;
 int changed;

 if (value->value.enumerated.item[0] > 1)
  return -EINVAL;
 mutex_lock(&umidi->mutex);
 changed = value->value.enumerated.item[0] != kcontrol->private_value;
 if (changed)
  kcontrol->private_value = value->value.enumerated.item[0];
 mutex_unlock(&umidi->mutex);
 return changed;
}
