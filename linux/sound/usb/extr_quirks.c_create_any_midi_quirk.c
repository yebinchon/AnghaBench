
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_interface {int dummy; } ;
struct usb_driver {int dummy; } ;
struct snd_usb_audio_quirk {int dummy; } ;
struct snd_usb_audio {int midi_list; int card; } ;


 int snd_usbmidi_create (int ,struct usb_interface*,int *,struct snd_usb_audio_quirk const*) ;

__attribute__((used)) static int create_any_midi_quirk(struct snd_usb_audio *chip,
     struct usb_interface *intf,
     struct usb_driver *driver,
     const struct snd_usb_audio_quirk *quirk)
{
 return snd_usbmidi_create(chip->card, intf, &chip->midi_list, quirk);
}
