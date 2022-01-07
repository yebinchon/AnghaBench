
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u16 ;
struct TYPE_6__ {int mixer; } ;
struct usb_mixer_elem_info {int channels; TYPE_3__ head; } ;
struct snd_kcontrol {struct usb_mixer_elem_info* private_data; } ;
struct TYPE_4__ {int * value; } ;
struct TYPE_5__ {TYPE_1__ integer; } ;
struct snd_ctl_elem_value {TYPE_2__ value; } ;


 int SCARLETT2_NUM_METERS ;
 int scarlett2_usb_get_meter_levels (int ,int *) ;

__attribute__((used)) static int scarlett2_meter_ctl_get(struct snd_kcontrol *kctl,
       struct snd_ctl_elem_value *ucontrol)
{
 struct usb_mixer_elem_info *elem = kctl->private_data;
 u16 meter_levels[SCARLETT2_NUM_METERS];
 int i, err;

 err = scarlett2_usb_get_meter_levels(elem->head.mixer, meter_levels);
 if (err < 0)
  return err;

 for (i = 0; i < elem->channels; i++)
  ucontrol->value.integer.value[i] = meter_levels[i];

 return 0;
}
