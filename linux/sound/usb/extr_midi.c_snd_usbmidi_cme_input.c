
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct snd_usb_midi_in_endpoint {int dummy; } ;


 int snd_usbmidi_input_data (struct snd_usb_midi_in_endpoint*,int,int*,int) ;
 int snd_usbmidi_standard_input (struct snd_usb_midi_in_endpoint*,int*,int) ;

__attribute__((used)) static void snd_usbmidi_cme_input(struct snd_usb_midi_in_endpoint *ep,
      uint8_t *buffer, int buffer_length)
{
 if (buffer_length < 2 || (buffer[0] & 0x0f) != 0x0f)
  snd_usbmidi_standard_input(ep, buffer, buffer_length);
 else
  snd_usbmidi_input_data(ep, buffer[0] >> 4,
           &buffer[1], buffer_length - 1);
}
