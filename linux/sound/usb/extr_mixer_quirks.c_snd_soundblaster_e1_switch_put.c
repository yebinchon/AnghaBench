
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct usb_mixer_elem_list {int mixer; } ;
struct snd_kcontrol {unsigned char private_value; } ;
struct TYPE_3__ {int * value; } ;
struct TYPE_4__ {TYPE_1__ integer; } ;
struct snd_ctl_elem_value {TYPE_2__ value; } ;


 struct usb_mixer_elem_list* snd_kcontrol_chip (struct snd_kcontrol*) ;
 int snd_soundblaster_e1_switch_update (int ,unsigned char) ;

__attribute__((used)) static int snd_soundblaster_e1_switch_put(struct snd_kcontrol *kcontrol,
       struct snd_ctl_elem_value *ucontrol)
{
 struct usb_mixer_elem_list *list = snd_kcontrol_chip(kcontrol);
 unsigned char value = !!ucontrol->value.integer.value[0];
 int err;

 if (kcontrol->private_value == value)
  return 0;
 kcontrol->private_value = value;
 err = snd_soundblaster_e1_switch_update(list->mixer, value);
 return err < 0 ? err : 1;
}
