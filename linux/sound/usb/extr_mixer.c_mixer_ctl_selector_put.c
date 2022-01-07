
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct usb_mixer_elem_info {int control; } ;
struct snd_kcontrol {struct usb_mixer_elem_info* private_data; } ;
struct TYPE_3__ {int* item; } ;
struct TYPE_4__ {TYPE_1__ enumerated; } ;
struct snd_ctl_elem_value {TYPE_2__ value; } ;


 int filter_error (struct usb_mixer_elem_info*,int) ;
 int get_abs_value (struct usb_mixer_elem_info*,int) ;
 int get_cur_ctl_value (struct usb_mixer_elem_info*,int,int*) ;
 int set_cur_ctl_value (struct usb_mixer_elem_info*,int,int) ;

__attribute__((used)) static int mixer_ctl_selector_put(struct snd_kcontrol *kcontrol,
      struct snd_ctl_elem_value *ucontrol)
{
 struct usb_mixer_elem_info *cval = kcontrol->private_data;
 int val, oval, err;

 err = get_cur_ctl_value(cval, cval->control << 8, &oval);
 if (err < 0)
  return filter_error(cval, err);
 val = ucontrol->value.enumerated.item[0];
 val = get_abs_value(cval, val);
 if (val != oval) {
  set_cur_ctl_value(cval, cval->control << 8, val);
  return 1;
 }
 return 0;
}
