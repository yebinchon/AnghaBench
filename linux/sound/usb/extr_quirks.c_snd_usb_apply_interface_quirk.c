
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_usb_audio {scalar_t__ usb_id; } ;


 scalar_t__ USB_ID (int,int) ;
 int audiophile_skip_setting_quirk (struct snd_usb_audio*,int,int) ;
 int fasttrackpro_skip_setting_quirk (struct snd_usb_audio*,int,int) ;
 int quattro_skip_setting_quirk (struct snd_usb_audio*,int,int) ;

int snd_usb_apply_interface_quirk(struct snd_usb_audio *chip,
      int iface,
      int altno)
{

 if (chip->usb_id == USB_ID(0x0763, 0x2003))
  return audiophile_skip_setting_quirk(chip, iface, altno);

 if (chip->usb_id == USB_ID(0x0763, 0x2001))
  return quattro_skip_setting_quirk(chip, iface, altno);

 if (chip->usb_id == USB_ID(0x0763, 0x2012))
  return fasttrackpro_skip_setting_quirk(chip, iface, altno);

 return 0;
}
