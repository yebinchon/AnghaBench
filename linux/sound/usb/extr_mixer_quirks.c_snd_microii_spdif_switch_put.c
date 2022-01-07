
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u8 ;
struct usb_mixer_elem_list {TYPE_3__* kctl; } ;
struct snd_kcontrol {int private_value; } ;
struct TYPE_4__ {scalar_t__* value; } ;
struct TYPE_5__ {TYPE_1__ integer; } ;
struct snd_ctl_elem_value {TYPE_2__ value; } ;
struct TYPE_6__ {int private_value; } ;


 struct usb_mixer_elem_list* snd_kcontrol_chip (struct snd_kcontrol*) ;
 int snd_microii_spdif_switch_update (struct usb_mixer_elem_list*) ;

__attribute__((used)) static int snd_microii_spdif_switch_put(struct snd_kcontrol *kcontrol,
 struct snd_ctl_elem_value *ucontrol)
{
 struct usb_mixer_elem_list *list = snd_kcontrol_chip(kcontrol);
 u8 reg;
 int err;

 reg = ucontrol->value.integer.value[0] ? 0x28 : 0x2a;
 if (reg != list->kctl->private_value)
  return 0;

 kcontrol->private_value = reg;
 err = snd_microii_spdif_switch_update(list);
 return err < 0 ? err : 1;
}
