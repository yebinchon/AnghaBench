
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef size_t u8 ;
struct usbmidi_in_port {int running_status_length; } ;
struct snd_usb_midi_in_endpoint {struct usbmidi_in_port* ports; } ;


 int* snd_usbmidi_cin_length ;
 int snd_usbmidi_input_data (struct snd_usb_midi_in_endpoint*,int,int*,int) ;

__attribute__((used)) static void snd_usbmidi_maudio_broken_running_status_input(
     struct snd_usb_midi_in_endpoint *ep,
     uint8_t *buffer, int buffer_length)
{
 int i;

 for (i = 0; i + 3 < buffer_length; i += 4)
  if (buffer[i] != 0) {
   int cable = buffer[i] >> 4;
   u8 cin = buffer[i] & 0x0f;
   struct usbmidi_in_port *port = &ep->ports[cable];
   int length;

   length = snd_usbmidi_cin_length[cin];
   if (cin == 0xf && buffer[i + 1] >= 0xf8)
    ;
   else if (cin >= 0x8 && cin <= 0xe)

    port->running_status_length = length - 1;
   else if (cin == 0x4 &&
     port->running_status_length != 0 &&
     buffer[i + 1] < 0x80)

    length = port->running_status_length;
   else






    port->running_status_length = 0;
   snd_usbmidi_input_data(ep, cable, &buffer[i + 1],
            length);
  }
}
