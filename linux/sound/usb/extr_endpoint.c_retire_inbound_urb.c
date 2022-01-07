
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct urb {int dummy; } ;
struct snd_usb_endpoint {scalar_t__ skip_packets; int data_subs; int (* retire_data_urb ) (int ,struct urb*) ;scalar_t__ sync_slave; } ;
struct snd_urb_ctx {struct urb* urb; } ;


 int snd_usb_handle_sync_urb (scalar_t__,struct snd_usb_endpoint*,struct urb*) ;
 int stub1 (int ,struct urb*) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static void retire_inbound_urb(struct snd_usb_endpoint *ep,
          struct snd_urb_ctx *urb_ctx)
{
 struct urb *urb = urb_ctx->urb;

 if (unlikely(ep->skip_packets > 0)) {
  ep->skip_packets--;
  return;
 }

 if (ep->sync_slave)
  snd_usb_handle_sync_urb(ep->sync_slave, ep, urb);

 if (ep->retire_data_urb)
  ep->retire_data_urb(ep->data_subs, urb);
}
