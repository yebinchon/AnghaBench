
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_usb_endpoint {int data_subs; int (* retire_data_urb ) (int ,int ) ;} ;
struct snd_urb_ctx {int urb; } ;


 int stub1 (int ,int ) ;

__attribute__((used)) static void retire_outbound_urb(struct snd_usb_endpoint *ep,
    struct snd_urb_ctx *urb_ctx)
{
 if (ep->retire_data_urb)
  ep->retire_data_urb(ep->data_subs, urb_ctx->urb);
}
