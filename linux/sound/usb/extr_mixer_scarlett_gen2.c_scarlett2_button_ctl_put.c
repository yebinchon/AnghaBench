
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct usb_mixer_interface {struct scarlett2_mixer_data* private_data; } ;
struct TYPE_4__ {struct usb_mixer_interface* mixer; } ;
struct usb_mixer_elem_info {int control; TYPE_1__ head; } ;
struct snd_kcontrol {struct usb_mixer_elem_info* private_data; } ;
struct TYPE_5__ {int * value; } ;
struct TYPE_6__ {TYPE_2__ integer; } ;
struct snd_ctl_elem_value {TYPE_3__ value; } ;
struct scarlett2_mixer_data {int* buttons; int data_mutex; } ;


 int SCARLETT2_CONFIG_BUTTONS ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int scarlett2_usb_set_config (struct usb_mixer_interface*,int ,int,int) ;

__attribute__((used)) static int scarlett2_button_ctl_put(struct snd_kcontrol *kctl,
        struct snd_ctl_elem_value *ucontrol)
{
 struct usb_mixer_elem_info *elem = kctl->private_data;
 struct usb_mixer_interface *mixer = elem->head.mixer;
 struct scarlett2_mixer_data *private = mixer->private_data;

 int index = elem->control;
 int oval, val, err = 0;

 mutex_lock(&private->data_mutex);

 oval = private->buttons[index];
 val = !!ucontrol->value.integer.value[0];

 if (oval == val)
  goto unlock;

 private->buttons[index] = val;


 err = scarlett2_usb_set_config(mixer, SCARLETT2_CONFIG_BUTTONS,
           index, val);

unlock:
 mutex_unlock(&private->data_mutex);
 return err;
}
