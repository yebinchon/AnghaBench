
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct usb_device {int dummy; } ;


 int COMM_EP ;
 int EIO ;
 int HZ ;
 int usb_interrupt_msg (struct usb_device*,int ,int*,int,int*,int ) ;
 int usb_sndintpipe (struct usb_device*,int ) ;

__attribute__((used)) static int usb6fire_comm_send_buffer(u8 *buffer, struct usb_device *dev)
{
 int ret;
 int actual_len;

 ret = usb_interrupt_msg(dev, usb_sndintpipe(dev, COMM_EP),
   buffer, buffer[1] + 2, &actual_len, HZ);
 if (ret < 0)
  return ret;
 else if (actual_len != buffer[1] + 2)
  return -EIO;
 return 0;
}
