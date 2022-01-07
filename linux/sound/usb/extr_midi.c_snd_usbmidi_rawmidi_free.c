
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_usb_midi {int dummy; } ;
struct snd_rawmidi {struct snd_usb_midi* private_data; } ;


 int snd_usbmidi_free (struct snd_usb_midi*) ;

__attribute__((used)) static void snd_usbmidi_rawmidi_free(struct snd_rawmidi *rmidi)
{
 struct snd_usb_midi *umidi = rmidi->private_data;
 snd_usbmidi_free(umidi);
}
