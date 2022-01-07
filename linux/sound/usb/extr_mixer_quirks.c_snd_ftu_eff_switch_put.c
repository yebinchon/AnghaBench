
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct usb_mixer_elem_list {TYPE_2__* kctl; } ;
struct snd_kcontrol {int private_value; } ;
struct TYPE_6__ {int* item; } ;
struct TYPE_4__ {TYPE_3__ enumerated; } ;
struct snd_ctl_elem_value {TYPE_1__ value; } ;
struct TYPE_5__ {unsigned int private_value; } ;


 int snd_ftu_eff_switch_update (struct usb_mixer_elem_list*) ;
 struct usb_mixer_elem_list* snd_kcontrol_chip (struct snd_kcontrol*) ;

__attribute__((used)) static int snd_ftu_eff_switch_put(struct snd_kcontrol *kctl,
     struct snd_ctl_elem_value *ucontrol)
{
 struct usb_mixer_elem_list *list = snd_kcontrol_chip(kctl);
 unsigned int pval = list->kctl->private_value;
 int cur_val, err, new_val;

 cur_val = pval >> 24;
 new_val = ucontrol->value.enumerated.item[0];
 if (cur_val == new_val)
  return 0;

 kctl->private_value &= ~(0xff << 24);
 kctl->private_value |= new_val << 24;
 err = snd_ftu_eff_switch_update(list);
 return err < 0 ? err : 1;
}
