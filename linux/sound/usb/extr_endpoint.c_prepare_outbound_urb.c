
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct urb {unsigned char* transfer_buffer; TYPE_2__* iso_frame_desc; int dev; } ;
struct snd_usb_endpoint {int type; unsigned char freqn; TYPE_1__* chip; int data_subs; int (* prepare_data_urb ) (int ,struct urb*) ;} ;
struct snd_urb_ctx {struct urb* urb; } ;
struct TYPE_4__ {int length; int offset; } ;
struct TYPE_3__ {int dev; } ;




 int USB_SPEED_HIGH ;
 int prepare_silent_urb (struct snd_usb_endpoint*,struct snd_urb_ctx*) ;
 int snd_usb_get_speed (int ) ;
 int stub1 (int ,struct urb*) ;

__attribute__((used)) static void prepare_outbound_urb(struct snd_usb_endpoint *ep,
     struct snd_urb_ctx *ctx)
{
 struct urb *urb = ctx->urb;
 unsigned char *cp = urb->transfer_buffer;

 urb->dev = ep->chip->dev;

 switch (ep->type) {
 case 129:
  if (ep->prepare_data_urb) {
   ep->prepare_data_urb(ep->data_subs, urb);
  } else {

   prepare_silent_urb(ep, ctx);
  }
  break;

 case 128:
  if (snd_usb_get_speed(ep->chip->dev) >= USB_SPEED_HIGH) {




   urb->iso_frame_desc[0].length = 4;
   urb->iso_frame_desc[0].offset = 0;
   cp[0] = ep->freqn;
   cp[1] = ep->freqn >> 8;
   cp[2] = ep->freqn >> 16;
   cp[3] = ep->freqn >> 24;
  } else {




   urb->iso_frame_desc[0].length = 3;
   urb->iso_frame_desc[0].offset = 0;
   cp[0] = ep->freqn >> 2;
   cp[1] = ep->freqn >> 10;
   cp[2] = ep->freqn >> 18;
  }

  break;
 }
}
