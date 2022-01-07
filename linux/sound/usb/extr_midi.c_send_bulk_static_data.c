
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct snd_usb_midi_out_endpoint {TYPE_2__* urbs; TYPE_3__* umidi; } ;
struct TYPE_6__ {int dev; } ;
struct TYPE_5__ {TYPE_1__* urb; } ;
struct TYPE_4__ {int pipe; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int dump_urb (char*,void*,int) ;
 int kfree (void*) ;
 void* kmemdup (void const*,int,int ) ;
 int usb_bulk_msg (int ,int ,void*,int,int *,int) ;

__attribute__((used)) static int send_bulk_static_data(struct snd_usb_midi_out_endpoint *ep,
     const void *data, int len)
{
 int err = 0;
 void *buf = kmemdup(data, len, GFP_KERNEL);
 if (!buf)
  return -ENOMEM;
 dump_urb("sending", buf, len);
 if (ep->urbs[0].urb)
  err = usb_bulk_msg(ep->umidi->dev, ep->urbs[0].urb->pipe,
       buf, len, ((void*)0), 250);
 kfree(buf);
 return err;
}
