
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u8 ;
struct usb_mixer_elem_list {int dummy; } ;
struct snd_kcontrol {int private_value; } ;
struct TYPE_3__ {scalar_t__* value; } ;
struct TYPE_4__ {TYPE_1__ integer; } ;
struct snd_ctl_elem_value {TYPE_2__ value; } ;


 struct usb_mixer_elem_list* snd_kcontrol_chip (struct snd_kcontrol*) ;
 int snd_ni_update_cur_val (struct usb_mixer_elem_list*) ;

__attribute__((used)) static int snd_nativeinstruments_control_put(struct snd_kcontrol *kcontrol,
          struct snd_ctl_elem_value *ucontrol)
{
 struct usb_mixer_elem_list *list = snd_kcontrol_chip(kcontrol);
 u8 oldval = (kcontrol->private_value >> 24) & 0xff;
 u8 newval = ucontrol->value.integer.value[0];
 int err;

 if (oldval == newval)
  return 0;

 kcontrol->private_value &= ~(0xff << 24);
 kcontrol->private_value |= (unsigned int)newval << 24;
 err = snd_ni_update_cur_val(list);
 return err < 0 ? err : 1;
}
