
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_interface {int dummy; } ;
struct usb_driver {int dummy; } ;
struct snd_usb_audio_quirk {scalar_t__ ifnum; } ;
struct snd_usb_audio {int dummy; } ;


 int snd_usb_create_mixer (struct snd_usb_audio*,scalar_t__,int ) ;

__attribute__((used)) static int create_standard_mixer_quirk(struct snd_usb_audio *chip,
           struct usb_interface *iface,
           struct usb_driver *driver,
           const struct snd_usb_audio_quirk *quirk)
{
 if (quirk->ifnum < 0)
  return 0;

 return snd_usb_create_mixer(chip, quirk->ifnum, 0);
}
