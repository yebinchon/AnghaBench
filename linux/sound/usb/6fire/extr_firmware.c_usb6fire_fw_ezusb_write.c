
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_device {int dummy; } ;


 int EIO ;
 int HZ ;
 int USB_DIR_OUT ;
 int USB_RECIP_DEVICE ;
 int USB_TYPE_VENDOR ;
 int usb_control_msg (struct usb_device*,int ,int,int,int,int ,char*,int,int ) ;
 int usb_sndctrlpipe (struct usb_device*,int ) ;

__attribute__((used)) static int usb6fire_fw_ezusb_write(struct usb_device *device,
  int type, int value, char *data, int len)
{
 int ret;

 ret = usb_control_msg(device, usb_sndctrlpipe(device, 0), type,
   USB_DIR_OUT | USB_TYPE_VENDOR | USB_RECIP_DEVICE,
   value, 0, data, len, HZ);
 if (ret < 0)
  return ret;
 else if (ret != len)
  return -EIO;
 return 0;
}
