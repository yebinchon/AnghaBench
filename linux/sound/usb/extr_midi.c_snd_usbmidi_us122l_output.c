
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct urb {scalar_t__ transfer_buffer_length; scalar_t__ transfer_buffer; } ;
struct snd_usb_midi_out_endpoint {scalar_t__ max_transfer; TYPE_2__* ports; TYPE_1__* umidi; } ;
struct TYPE_4__ {scalar_t__ active; int substream; } ;
struct TYPE_3__ {int dev; } ;





 int memset (scalar_t__,int,scalar_t__) ;
 int snd_rawmidi_transmit (int ,scalar_t__,int) ;
 int snd_usb_get_speed (int ) ;

__attribute__((used)) static void snd_usbmidi_us122l_output(struct snd_usb_midi_out_endpoint *ep,
          struct urb *urb)
{
 int count;

 if (!ep->ports[0].active)
  return;
 switch (snd_usb_get_speed(ep->umidi->dev)) {
 case 130:
 case 129:
 case 128:
  count = 1;
  break;
 default:
  count = 2;
 }
 count = snd_rawmidi_transmit(ep->ports[0].substream,
         urb->transfer_buffer,
         count);
 if (count < 1) {
  ep->ports[0].active = 0;
  return;
 }

 memset(urb->transfer_buffer + count, 0xFD, ep->max_transfer - count);
 urb->transfer_buffer_length = ep->max_transfer;
}
