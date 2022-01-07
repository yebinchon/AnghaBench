
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct usb_mixer_elem_info {struct scarlett_mixer_elem_enum_info* private_data; } ;
struct snd_kcontrol {struct usb_mixer_elem_info* private_data; } ;
struct TYPE_3__ {int* value; } ;
struct TYPE_4__ {TYPE_1__ integer; } ;
struct snd_ctl_elem_value {TYPE_2__ value; } ;
struct scarlett_mixer_elem_enum_info {int start; } ;


 int snd_usb_get_cur_mix_value (struct usb_mixer_elem_info*,int ,int ,int*) ;
 int snd_usb_set_cur_mix_value (struct usb_mixer_elem_info*,int ,int ,int) ;

__attribute__((used)) static int scarlett_ctl_enum_put(struct snd_kcontrol *kctl,
     struct snd_ctl_elem_value *ucontrol)
{
 struct usb_mixer_elem_info *elem = kctl->private_data;
 struct scarlett_mixer_elem_enum_info *opt = elem->private_data;
 int err, oval, val;

 err = snd_usb_get_cur_mix_value(elem, 0, 0, &oval);
 if (err < 0)
  return err;

 val = ucontrol->value.integer.value[0];
 val = val + opt->start;
 if (val != oval) {
  snd_usb_set_cur_mix_value(elem, 0, 0, val);
  return 1;
 }
 return 0;
}
