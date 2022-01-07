
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct usb_mixer_interface {struct scarlett2_mixer_data* private_data; } ;
struct TYPE_6__ {struct usb_mixer_interface* mixer; } ;
struct usb_mixer_elem_info {size_t control; TYPE_3__ head; } ;
struct snd_kcontrol {struct usb_mixer_elem_info* private_data; } ;
struct TYPE_4__ {int * item; } ;
struct TYPE_5__ {TYPE_1__ enumerated; } ;
struct snd_ctl_elem_value {TYPE_2__ value; } ;
struct scarlett2_mixer_data {int * buttons; int data_mutex; scalar_t__ vol_updated; } ;


 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int scarlett2_update_volumes (struct usb_mixer_interface*) ;

__attribute__((used)) static int scarlett2_button_ctl_get(struct snd_kcontrol *kctl,
        struct snd_ctl_elem_value *ucontrol)
{
 struct usb_mixer_elem_info *elem = kctl->private_data;
 struct usb_mixer_interface *mixer = elem->head.mixer;
 struct scarlett2_mixer_data *private = mixer->private_data;

 if (private->vol_updated) {
  mutex_lock(&private->data_mutex);
  scarlett2_update_volumes(mixer);
  mutex_unlock(&private->data_mutex);
 }

 ucontrol->value.enumerated.item[0] = private->buttons[elem->control];
 return 0;
}
