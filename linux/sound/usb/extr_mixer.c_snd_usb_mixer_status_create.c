
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct usb_mixer_interface {int urb; TYPE_1__* chip; int hostif; } ;
struct usb_endpoint_descriptor {int bInterval; int wMaxPacketSize; } ;
struct TYPE_4__ {int bNumEndpoints; } ;
struct TYPE_3__ {int dev; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 struct usb_endpoint_descriptor* get_endpoint (int ,int ) ;
 TYPE_2__* get_iface_desc (int ) ;
 int kfree (void*) ;
 void* kmalloc (int,int ) ;
 int le16_to_cpu (int ) ;
 int snd_usb_mixer_interrupt ;
 int usb_alloc_urb (int ,int ) ;
 int usb_endpoint_dir_in (struct usb_endpoint_descriptor*) ;
 unsigned int usb_endpoint_num (struct usb_endpoint_descriptor*) ;
 int usb_endpoint_xfer_int (struct usb_endpoint_descriptor*) ;
 int usb_fill_int_urb (int ,int ,int ,void*,int,int ,struct usb_mixer_interface*,int ) ;
 int usb_rcvintpipe (int ,unsigned int) ;
 int usb_submit_urb (int ,int ) ;

__attribute__((used)) static int snd_usb_mixer_status_create(struct usb_mixer_interface *mixer)
{
 struct usb_endpoint_descriptor *ep;
 void *transfer_buffer;
 int buffer_length;
 unsigned int epnum;


 if (get_iface_desc(mixer->hostif)->bNumEndpoints < 1)
  return 0;
 ep = get_endpoint(mixer->hostif, 0);
 if (!usb_endpoint_dir_in(ep) || !usb_endpoint_xfer_int(ep))
  return 0;

 epnum = usb_endpoint_num(ep);
 buffer_length = le16_to_cpu(ep->wMaxPacketSize);
 transfer_buffer = kmalloc(buffer_length, GFP_KERNEL);
 if (!transfer_buffer)
  return -ENOMEM;
 mixer->urb = usb_alloc_urb(0, GFP_KERNEL);
 if (!mixer->urb) {
  kfree(transfer_buffer);
  return -ENOMEM;
 }
 usb_fill_int_urb(mixer->urb, mixer->chip->dev,
    usb_rcvintpipe(mixer->chip->dev, epnum),
    transfer_buffer, buffer_length,
    snd_usb_mixer_interrupt, mixer, ep->bInterval);
 usb_submit_urb(mixer->urb, GFP_KERNEL);
 return 0;
}
