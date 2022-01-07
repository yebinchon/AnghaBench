
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct snd_usb_endpoint {int syncinterval; int nurbs; int pipe; scalar_t__ sync_dma; scalar_t__ syncbuf; struct snd_urb_ctx* urb; TYPE_1__* chip; } ;
struct snd_urb_ctx {int index; int packets; TYPE_2__* urb; struct snd_usb_endpoint* ep; } ;
struct TYPE_4__ {int transfer_buffer_length; int number_of_packets; int interval; int complete; struct snd_urb_ctx* context; int transfer_flags; int pipe; scalar_t__ transfer_dma; scalar_t__ transfer_buffer; } ;
struct TYPE_3__ {int dev; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int SYNC_URBS ;
 int URB_NO_TRANSFER_DMA_MAP ;
 int release_urbs (struct snd_usb_endpoint*,int ) ;
 int snd_complete_urb ;
 scalar_t__ usb_alloc_coherent (int ,int,int ,scalar_t__*) ;
 TYPE_2__* usb_alloc_urb (int,int ) ;

__attribute__((used)) static int sync_ep_set_params(struct snd_usb_endpoint *ep)
{
 int i;

 ep->syncbuf = usb_alloc_coherent(ep->chip->dev, SYNC_URBS * 4,
      GFP_KERNEL, &ep->sync_dma);
 if (!ep->syncbuf)
  return -ENOMEM;

 for (i = 0; i < SYNC_URBS; i++) {
  struct snd_urb_ctx *u = &ep->urb[i];
  u->index = i;
  u->ep = ep;
  u->packets = 1;
  u->urb = usb_alloc_urb(1, GFP_KERNEL);
  if (!u->urb)
   goto out_of_memory;
  u->urb->transfer_buffer = ep->syncbuf + i * 4;
  u->urb->transfer_dma = ep->sync_dma + i * 4;
  u->urb->transfer_buffer_length = 4;
  u->urb->pipe = ep->pipe;
  u->urb->transfer_flags = URB_NO_TRANSFER_DMA_MAP;
  u->urb->number_of_packets = 1;
  u->urb->interval = 1 << ep->syncinterval;
  u->urb->context = u;
  u->urb->complete = snd_complete_urb;
 }

 ep->nurbs = SYNC_URBS;

 return 0;

out_of_memory:
 release_urbs(ep, 0);
 return -ENOMEM;
}
