
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_interface {int dummy; } ;
struct usb_driver {int dummy; } ;
struct snd_usb_audio {int dummy; } ;


 int ENODEV ;
 int create_auto_midi_quirk (struct snd_usb_audio*,struct usb_interface*,struct usb_driver*) ;
 int create_auto_pcm_quirk (struct snd_usb_audio*,struct usb_interface*,struct usb_driver*) ;

__attribute__((used)) static int create_autodetect_quirk(struct snd_usb_audio *chip,
       struct usb_interface *iface,
       struct usb_driver *driver)
{
 int err;

 err = create_auto_pcm_quirk(chip, iface, driver);
 if (err == -ENODEV)
  err = create_auto_midi_quirk(chip, iface, driver);
 return err;
}
