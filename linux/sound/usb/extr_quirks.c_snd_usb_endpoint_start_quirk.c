
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_usb_endpoint {scalar_t__ type; int skip_packets; int syncmaxsize; int tenor_fb_quirk; TYPE_1__* chip; } ;
struct TYPE_2__ {scalar_t__ usb_id; } ;


 scalar_t__ SND_USB_ENDPOINT_TYPE_DATA ;
 scalar_t__ SND_USB_ENDPOINT_TYPE_SYNC ;
 scalar_t__ USB_ID (int,int) ;
 int USB_ID_VENDOR (scalar_t__) ;

void snd_usb_endpoint_start_quirk(struct snd_usb_endpoint *ep)
{




 if (USB_ID_VENDOR(ep->chip->usb_id) == 0x23ba &&
     ep->type == SND_USB_ENDPOINT_TYPE_SYNC)
  ep->skip_packets = 4;
 if ((ep->chip->usb_id == USB_ID(0x0763, 0x2030) ||
      ep->chip->usb_id == USB_ID(0x0763, 0x2031)) &&
     ep->type == SND_USB_ENDPOINT_TYPE_DATA)
  ep->skip_packets = 16;


 if ((ep->chip->usb_id == USB_ID(0x0644, 0x8038) ||
      ep->chip->usb_id == USB_ID(0x1852, 0x5034)) &&
     ep->syncmaxsize == 4)
  ep->tenor_fb_quirk = 1;
}
