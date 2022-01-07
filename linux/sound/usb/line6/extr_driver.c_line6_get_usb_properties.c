
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct usb_line6 {int iso_buffers; int intervals_per_second; int max_packet_size; int interval; int ifcdev; struct line6_properties* properties; struct usb_device* usbdev; } ;
struct TYPE_2__ {int wMaxPacketSize; int bInterval; } ;
struct usb_host_endpoint {TYPE_1__ desc; } ;
struct usb_device {scalar_t__ speed; struct usb_host_endpoint** ep_in; } ;
struct line6_properties {int capabilities; int ep_ctrl_r; } ;


 int LINE6_CAP_CONTROL ;
 int LINE6_CAP_CONTROL_MIDI ;
 int LINE6_FALLBACK_INTERVAL ;
 int LINE6_FALLBACK_MAXPACKETSIZE ;
 int USB_HIGH_INTERVALS_PER_SECOND ;
 int USB_HIGH_ISO_BUFFERS ;
 int USB_LOW_INTERVALS_PER_SECOND ;
 int USB_LOW_ISO_BUFFERS ;
 scalar_t__ USB_SPEED_LOW ;
 int dev_err (int ,char*) ;
 int le16_to_cpu (int ) ;
 size_t usb_pipeendpoint (int) ;
 int usb_rcvbulkpipe (struct usb_device*,int ) ;
 int usb_rcvintpipe (struct usb_device*,int ) ;

__attribute__((used)) static void line6_get_usb_properties(struct usb_line6 *line6)
{
 struct usb_device *usbdev = line6->usbdev;
 const struct line6_properties *properties = line6->properties;
 int pipe;
 struct usb_host_endpoint *ep = ((void*)0);

 if (properties->capabilities & LINE6_CAP_CONTROL) {
  if (properties->capabilities & LINE6_CAP_CONTROL_MIDI) {
   pipe = usb_rcvintpipe(line6->usbdev,
    line6->properties->ep_ctrl_r);
  } else {
   pipe = usb_rcvbulkpipe(line6->usbdev,
    line6->properties->ep_ctrl_r);
  }
  ep = usbdev->ep_in[usb_pipeendpoint(pipe)];
 }


 if (ep) {
  line6->interval = ep->desc.bInterval;
  line6->max_packet_size = le16_to_cpu(ep->desc.wMaxPacketSize);
 } else {
  if (properties->capabilities & LINE6_CAP_CONTROL) {
   dev_err(line6->ifcdev,
    "endpoint not available, using fallback values");
  }
  line6->interval = LINE6_FALLBACK_INTERVAL;
  line6->max_packet_size = LINE6_FALLBACK_MAXPACKETSIZE;
 }


 if (usbdev->speed == USB_SPEED_LOW) {
  line6->intervals_per_second = USB_LOW_INTERVALS_PER_SECOND;
  line6->iso_buffers = USB_LOW_ISO_BUFFERS;
 } else {
  line6->intervals_per_second = USB_HIGH_INTERVALS_PER_SECOND;
  line6->iso_buffers = USB_HIGH_ISO_BUFFERS;
 }
}
