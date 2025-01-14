
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct usb_mixer_interface {TYPE_3__* chip; } ;
struct snd_kcontrol {int dummy; } ;
struct TYPE_4__ {int * value; } ;
struct TYPE_5__ {TYPE_1__ integer; } ;
struct snd_ctl_elem_value {TYPE_2__ value; } ;
struct TYPE_6__ {int keep_iface; } ;


 struct usb_mixer_interface* snd_kcontrol_chip (struct snd_kcontrol*) ;

__attribute__((used)) static int keep_iface_ctl_put(struct snd_kcontrol *kcontrol,
         struct snd_ctl_elem_value *ucontrol)
{
 struct usb_mixer_interface *mixer = snd_kcontrol_chip(kcontrol);
 bool keep_iface = !!ucontrol->value.integer.value[0];

 if (mixer->chip->keep_iface == keep_iface)
  return 0;
 mixer->chip->keep_iface = keep_iface;
 return 1;
}
