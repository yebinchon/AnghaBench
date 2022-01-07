
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct snd_usb_midi_in_endpoint {int in_sysex; unsigned int last_cin; } ;


 unsigned int* snd_usbmidi_cin_length ;
 int snd_usbmidi_input_data (struct snd_usb_midi_in_endpoint*,int ,int*,unsigned int) ;

__attribute__((used)) static void ch345_broken_sysex_input(struct snd_usb_midi_in_endpoint *ep,
         uint8_t *buffer, int buffer_length)
{
 unsigned int i, cin, length;

 for (i = 0; i + 3 < buffer_length; i += 4) {
  if (buffer[i] == 0 && i > 0)
   break;
  cin = buffer[i] & 0x0f;
  if (ep->in_sysex &&
      cin == ep->last_cin &&
      (buffer[i + 1 + (cin == 0x6)] & 0x80) == 0)
   cin = 0x4;
  length = snd_usbmidi_cin_length[cin];
  snd_usbmidi_input_data(ep, 0, &buffer[i + 1], length);
  ep->in_sysex = cin == 0x4;
  if (!ep->in_sysex)
   ep->last_cin = cin;
 }
}
