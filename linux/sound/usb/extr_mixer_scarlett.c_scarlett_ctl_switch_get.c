
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct usb_mixer_elem_info {int channels; } ;
struct snd_kcontrol {struct usb_mixer_elem_info* private_data; } ;
struct TYPE_3__ {int* value; } ;
struct TYPE_4__ {TYPE_1__ integer; } ;
struct snd_ctl_elem_value {TYPE_2__ value; } ;


 int snd_usb_get_cur_mix_value (struct usb_mixer_elem_info*,int,int,int*) ;

__attribute__((used)) static int scarlett_ctl_switch_get(struct snd_kcontrol *kctl,
  struct snd_ctl_elem_value *ucontrol)
{
 struct usb_mixer_elem_info *elem = kctl->private_data;
 int i, err, val;

 for (i = 0; i < elem->channels; i++) {
  err = snd_usb_get_cur_mix_value(elem, i, i, &val);
  if (err < 0)
   return err;

  val = !val;
  ucontrol->value.integer.value[i] = val;
 }

 return 0;
}
