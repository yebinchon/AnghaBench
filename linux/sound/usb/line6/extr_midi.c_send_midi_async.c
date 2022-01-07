
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct usb_line6 {int ifcdev; TYPE_2__* line6midi; int interval; TYPE_1__* properties; int usbdev; } ;
struct urb {scalar_t__ actual_length; } ;
struct TYPE_4__ {int num_active_send_urbs; } ;
struct TYPE_3__ {int ep_ctrl_w; } ;


 int ENOMEM ;
 int GFP_ATOMIC ;
 int dev_err (int ,char*) ;
 unsigned char* kmemdup (unsigned char*,int,int ) ;
 int midi_sent ;
 struct urb* usb_alloc_urb (int ,int ) ;
 int usb_fill_int_urb (struct urb*,int ,int ,unsigned char*,int,int ,struct usb_line6*,int ) ;
 int usb_free_urb (struct urb*) ;
 int usb_sndintpipe (int ,int ) ;
 int usb_submit_urb (struct urb*,int ) ;
 int usb_urb_ep_type_check (struct urb*) ;

__attribute__((used)) static int send_midi_async(struct usb_line6 *line6, unsigned char *data,
      int length)
{
 struct urb *urb;
 int retval;
 unsigned char *transfer_buffer;

 urb = usb_alloc_urb(0, GFP_ATOMIC);

 if (urb == ((void*)0))
  return -ENOMEM;

 transfer_buffer = kmemdup(data, length, GFP_ATOMIC);

 if (transfer_buffer == ((void*)0)) {
  usb_free_urb(urb);
  return -ENOMEM;
 }

 usb_fill_int_urb(urb, line6->usbdev,
    usb_sndintpipe(line6->usbdev,
      line6->properties->ep_ctrl_w),
    transfer_buffer, length, midi_sent, line6,
    line6->interval);
 urb->actual_length = 0;
 retval = usb_urb_ep_type_check(urb);
 if (retval < 0)
  goto error;

 retval = usb_submit_urb(urb, GFP_ATOMIC);
 if (retval < 0)
  goto error;

 ++line6->line6midi->num_active_send_urbs;
 return 0;

 error:
 dev_err(line6->ifcdev, "usb_submit_urb failed\n");
 usb_free_urb(urb);
 return retval;
}
