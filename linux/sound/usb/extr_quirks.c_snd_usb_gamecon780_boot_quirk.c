
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct usb_device {int dummy; } ;


 int UAC_FU_VOLUME ;
 int UAC_SET_CUR ;
 int USB_DIR_OUT ;
 int USB_RECIP_INTERFACE ;
 int USB_TYPE_CLASS ;
 int snd_usb_ctl_msg (struct usb_device*,int ,int ,int,int,int,int*,int) ;
 int usb_sndctrlpipe (struct usb_device*,int ) ;

__attribute__((used)) static int snd_usb_gamecon780_boot_quirk(struct usb_device *dev)
{



 u8 buf[2] = { 0x74, 0xe3 };
 return snd_usb_ctl_msg(dev, usb_sndctrlpipe(dev, 0), UAC_SET_CUR,
   USB_RECIP_INTERFACE | USB_TYPE_CLASS | USB_DIR_OUT,
   UAC_FU_VOLUME << 8, 9 << 8, buf, 2);
}
