
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {TYPE_1__* mixer; } ;
struct usb_mixer_elem_info {size_t control; TYPE_2__ head; } ;
struct snd_kcontrol {struct usb_mixer_elem_info* private_data; } ;
struct TYPE_7__ {int * item; } ;
struct TYPE_8__ {TYPE_3__ enumerated; } ;
struct snd_ctl_elem_value {TYPE_4__ value; } ;
struct scarlett2_mixer_data {int * level_switch; } ;
struct TYPE_5__ {struct scarlett2_mixer_data* private_data; } ;



__attribute__((used)) static int scarlett2_level_enum_ctl_get(struct snd_kcontrol *kctl,
     struct snd_ctl_elem_value *ucontrol)
{
 struct usb_mixer_elem_info *elem = kctl->private_data;
 struct scarlett2_mixer_data *private = elem->head.mixer->private_data;

 ucontrol->value.enumerated.item[0] =
  private->level_switch[elem->control];
 return 0;
}
