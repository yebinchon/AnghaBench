
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u8 ;
struct snd_kcontrol {unsigned int private_value; } ;
struct TYPE_7__ {scalar_t__* value; } ;
struct TYPE_8__ {TYPE_3__ integer; } ;
struct snd_ctl_elem_value {TYPE_4__ value; } ;
struct control_runtime {int output_mute; TYPE_2__* chip; } ;
struct TYPE_6__ {TYPE_1__* dev; } ;
struct TYPE_5__ {int dev; } ;


 int EINVAL ;
 int dev_err (int *,char*) ;
 struct control_runtime* snd_kcontrol_chip (struct snd_kcontrol*) ;
 int usb6fire_control_output_mute_update (struct control_runtime*) ;

__attribute__((used)) static int usb6fire_control_output_mute_put(struct snd_kcontrol *kcontrol,
 struct snd_ctl_elem_value *ucontrol)
{
 struct control_runtime *rt = snd_kcontrol_chip(kcontrol);
 unsigned int ch = kcontrol->private_value;
 u8 old = rt->output_mute;
 u8 value = 0;

 if (ch > 4) {
  dev_err(&rt->chip->dev->dev,
   "Invalid channel in volume control.");
  return -EINVAL;
 }

 rt->output_mute &= ~(3 << ch);
 if (ucontrol->value.integer.value[0])
  value |= 1;
 if (ucontrol->value.integer.value[1])
  value |= 2;
 rt->output_mute |= value << ch;

 if (rt->output_mute != old)
  usb6fire_control_output_mute_update(rt);

 return rt->output_mute != old;
}
