
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct usb_mixer_elem_list {int dummy; } ;
struct snd_kcontrol {unsigned int private_value; } ;
struct TYPE_3__ {int* status; } ;
struct TYPE_4__ {TYPE_1__ iec958; } ;
struct snd_ctl_elem_value {TYPE_2__ value; } ;


 struct usb_mixer_elem_list* snd_kcontrol_chip (struct snd_kcontrol*) ;
 int snd_microii_spdif_default_update (struct usb_mixer_elem_list*) ;

__attribute__((used)) static int snd_microii_spdif_default_put(struct snd_kcontrol *kcontrol,
 struct snd_ctl_elem_value *ucontrol)
{
 struct usb_mixer_elem_list *list = snd_kcontrol_chip(kcontrol);
 unsigned int pval, pval_old;
 int err;

 pval = pval_old = kcontrol->private_value;
 pval &= 0xfffff0f0;
 pval |= (ucontrol->value.iec958.status[1] & 0x0f) << 8;
 pval |= (ucontrol->value.iec958.status[0] & 0x0f);

 pval &= 0xffff0fff;
 pval |= (ucontrol->value.iec958.status[1] & 0xf0) << 8;





 if (pval == pval_old)
  return 0;

 kcontrol->private_value = pval;
 err = snd_microii_spdif_default_update(list);
 return err < 0 ? err : 1;
}
