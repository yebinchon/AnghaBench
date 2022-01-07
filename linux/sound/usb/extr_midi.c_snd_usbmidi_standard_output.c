
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct usbmidi_out_port {scalar_t__ active; int substream; } ;
struct urb {scalar_t__ transfer_buffer_length; } ;
struct snd_usb_midi_out_endpoint {scalar_t__ max_transfer; struct usbmidi_out_port* ports; } ;


 int snd_rawmidi_transmit (int ,int *,int) ;
 int snd_usbmidi_transmit_byte (struct usbmidi_out_port*,int ,struct urb*) ;

__attribute__((used)) static void snd_usbmidi_standard_output(struct snd_usb_midi_out_endpoint *ep,
     struct urb *urb)
{
 int p;


 for (p = 0; p < 0x10; ++p) {
  struct usbmidi_out_port *port = &ep->ports[p];
  if (!port->active)
   continue;
  while (urb->transfer_buffer_length + 3 < ep->max_transfer) {
   uint8_t b;
   if (snd_rawmidi_transmit(port->substream, &b, 1) != 1) {
    port->active = 0;
    break;
   }
   snd_usbmidi_transmit_byte(port, b, urb);
  }
 }
}
