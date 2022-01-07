
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct usb_device {int dummy; } ;


 int snd_usb_ctl_msg (struct usb_device*,int ,int,int,int,int,int**,int) ;
 int usb_rcvctrlpipe (struct usb_device*,int ) ;
 int usb_sndctrlpipe (struct usb_device*,int ) ;

__attribute__((used)) static void mbox2_setup_48_24_magic(struct usb_device *dev)
{
 u8 srate[3];
 u8 temp[12];


 srate[0] = 0x80;
 srate[1] = 0xbb;
 srate[2] = 0x00;


 snd_usb_ctl_msg(dev, usb_rcvctrlpipe(dev, 0),
  0x01, 0x22, 0x0100, 0x0085, &temp, 0x0003);
 snd_usb_ctl_msg(dev, usb_sndctrlpipe(dev, 0),
  0x81, 0xa2, 0x0100, 0x0085, &srate, 0x0003);
 snd_usb_ctl_msg(dev, usb_sndctrlpipe(dev, 0),
  0x81, 0xa2, 0x0100, 0x0086, &srate, 0x0003);
 snd_usb_ctl_msg(dev, usb_sndctrlpipe(dev, 0),
  0x81, 0xa2, 0x0100, 0x0003, &srate, 0x0003);
 return;
}
