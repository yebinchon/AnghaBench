
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct usb_mixer_elem_list {int mixer; } ;
struct snd_kcontrol {int private_value; } ;
struct TYPE_3__ {scalar_t__* value; } ;
struct TYPE_4__ {TYPE_1__ integer; } ;
struct snd_ctl_elem_value {TYPE_2__ value; } ;


 struct usb_mixer_elem_list* snd_kcontrol_chip (struct snd_kcontrol*) ;
 int snd_xonar_u1_switch_update (int ,int) ;

__attribute__((used)) static int snd_xonar_u1_switch_put(struct snd_kcontrol *kcontrol,
       struct snd_ctl_elem_value *ucontrol)
{
 struct usb_mixer_elem_list *list = snd_kcontrol_chip(kcontrol);
 u8 old_status, new_status;
 int err;

 old_status = kcontrol->private_value;
 if (ucontrol->value.integer.value[0])
  new_status = old_status | 0x02;
 else
  new_status = old_status & ~0x02;
 if (new_status == old_status)
  return 0;

 kcontrol->private_value = new_status;
 err = snd_xonar_u1_switch_update(list->mixer, new_status);
 return err < 0 ? err : 1;
}
