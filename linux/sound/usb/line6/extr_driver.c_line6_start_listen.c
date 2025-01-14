
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct usb_line6 {TYPE_2__* urb_listen; int ifcdev; int buffer_listen; TYPE_1__* properties; int usbdev; int interval; } ;
struct TYPE_7__ {scalar_t__ actual_length; } ;
struct TYPE_6__ {int capabilities; int ep_ctrl_r; } ;


 int EINVAL ;
 int GFP_ATOMIC ;
 int LINE6_BUFSIZE_LISTEN ;
 int LINE6_CAP_CONTROL_MIDI ;
 int dev_err (int ,char*) ;
 int line6_data_received ;
 int usb_fill_bulk_urb (TYPE_2__*,int ,int ,int ,int ,int ,struct usb_line6*) ;
 int usb_fill_int_urb (TYPE_2__*,int ,int ,int ,int ,int ,struct usb_line6*,int ) ;
 int usb_rcvbulkpipe (int ,int ) ;
 int usb_rcvintpipe (int ,int ) ;
 int usb_submit_urb (TYPE_2__*,int ) ;
 scalar_t__ usb_urb_ep_type_check (TYPE_2__*) ;

__attribute__((used)) static int line6_start_listen(struct usb_line6 *line6)
{
 int err;

 if (line6->properties->capabilities & LINE6_CAP_CONTROL_MIDI) {
  usb_fill_int_urb(line6->urb_listen, line6->usbdev,
   usb_rcvintpipe(line6->usbdev, line6->properties->ep_ctrl_r),
   line6->buffer_listen, LINE6_BUFSIZE_LISTEN,
   line6_data_received, line6, line6->interval);
 } else {
  usb_fill_bulk_urb(line6->urb_listen, line6->usbdev,
   usb_rcvbulkpipe(line6->usbdev, line6->properties->ep_ctrl_r),
   line6->buffer_listen, LINE6_BUFSIZE_LISTEN,
   line6_data_received, line6);
 }


 if (usb_urb_ep_type_check(line6->urb_listen)) {
  dev_err(line6->ifcdev, "invalid control EP\n");
  return -EINVAL;
 }

 line6->urb_listen->actual_length = 0;
 err = usb_submit_urb(line6->urb_listen, GFP_ATOMIC);
 return err;
}
