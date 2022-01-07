
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_device {int dev; } ;


 int HZ ;
 int LINE6_TIMEOUT ;
 int USB_DIR_OUT ;
 int USB_RECIP_DEVICE ;
 int USB_TYPE_VENDOR ;
 int dev_err (int *,char*,int) ;
 int usb_control_msg (struct usb_device*,int ,int,int,int,int,int *,int ,int) ;
 int usb_sndctrlpipe (struct usb_device*,int ) ;

__attribute__((used)) static int toneport_send_cmd(struct usb_device *usbdev, int cmd1, int cmd2)
{
 int ret;

 ret = usb_control_msg(usbdev, usb_sndctrlpipe(usbdev, 0), 0x67,
         USB_TYPE_VENDOR | USB_RECIP_DEVICE | USB_DIR_OUT,
         cmd1, cmd2, ((void*)0), 0, LINE6_TIMEOUT * HZ);

 if (ret < 0) {
  dev_err(&usbdev->dev, "send failed (error %d)\n", ret);
  return ret;
 }

 return 0;
}
