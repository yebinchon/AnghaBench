
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct usb_mixer_elem_info {struct snd_us16x08_meter_store* private_data; } ;
struct snd_us16x08_meter_store {int comp_active_index; int comp_index; } ;
struct snd_kcontrol {struct usb_mixer_elem_info* private_data; } ;
struct TYPE_3__ {int* value; } ;
struct TYPE_4__ {TYPE_1__ integer; } ;
struct snd_ctl_elem_value {TYPE_2__ value; } ;


 int EINVAL ;
 int SND_US16X08_MAX_CHANNELS ;

__attribute__((used)) static int snd_us16x08_meter_put(struct snd_kcontrol *kcontrol,
 struct snd_ctl_elem_value *ucontrol)
{
 struct usb_mixer_elem_info *elem = kcontrol->private_data;
 struct snd_us16x08_meter_store *store = elem->private_data;
 int val;

 val = ucontrol->value.integer.value[0];


 if (val < 0 || val >= SND_US16X08_MAX_CHANNELS)
  return -EINVAL;

 store->comp_active_index = val;
 store->comp_index = val;

 return 1;
}
