
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct usb_mixer_elem_info {int dummy; } ;
struct snd_kcontrol {struct usb_mixer_elem_info* private_data; } ;
struct TYPE_3__ {int* value; } ;
struct TYPE_4__ {TYPE_1__ integer; } ;
struct snd_ctl_elem_value {TYPE_2__ value; } ;


 int filter_error (struct usb_mixer_elem_info*,int) ;
 int snd_usb_get_cur_mix_value (struct usb_mixer_elem_info*,int ,int ,int*) ;

__attribute__((used)) static int mixer_ctl_master_bool_get(struct snd_kcontrol *kcontrol,
         struct snd_ctl_elem_value *ucontrol)
{
 struct usb_mixer_elem_info *cval = kcontrol->private_data;
 int val, err;

 err = snd_usb_get_cur_mix_value(cval, 0, 0, &val);
 if (err < 0)
  return filter_error(cval, err);
 val = (val != 0);
 ucontrol->value.integer.value[0] = val;
 return 0;
}
