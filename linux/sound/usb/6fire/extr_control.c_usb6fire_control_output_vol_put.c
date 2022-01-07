
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct snd_kcontrol {unsigned int private_value; } ;
struct TYPE_7__ {scalar_t__* value; } ;
struct TYPE_8__ {TYPE_3__ integer; } ;
struct snd_ctl_elem_value {TYPE_4__ value; } ;
struct control_runtime {scalar_t__* output_vol; int ovol_updated; TYPE_2__* chip; } ;
struct TYPE_6__ {TYPE_1__* dev; } ;
struct TYPE_5__ {int dev; } ;


 int EINVAL ;
 int dev_err (int *,char*) ;
 struct control_runtime* snd_kcontrol_chip (struct snd_kcontrol*) ;
 int usb6fire_control_output_vol_update (struct control_runtime*) ;

__attribute__((used)) static int usb6fire_control_output_vol_put(struct snd_kcontrol *kcontrol,
  struct snd_ctl_elem_value *ucontrol)
{
 struct control_runtime *rt = snd_kcontrol_chip(kcontrol);
 unsigned int ch = kcontrol->private_value;
 int changed = 0;

 if (ch > 4) {
  dev_err(&rt->chip->dev->dev,
   "Invalid channel in volume control.");
  return -EINVAL;
 }

 if (rt->output_vol[ch] != ucontrol->value.integer.value[0]) {
  rt->output_vol[ch] = ucontrol->value.integer.value[0];
  rt->ovol_updated &= ~(1 << ch);
  changed = 1;
 }
 if (rt->output_vol[ch + 1] != ucontrol->value.integer.value[1]) {
  rt->output_vol[ch + 1] = ucontrol->value.integer.value[1];
  rt->ovol_updated &= ~(2 << ch);
  changed = 1;
 }

 if (changed)
  usb6fire_control_output_vol_update(rt);

 return changed;
}
