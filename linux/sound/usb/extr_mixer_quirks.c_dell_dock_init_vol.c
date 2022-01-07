
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct snd_usb_audio {int dev; } ;


 int UAC_SET_CUR ;
 int USB_DIR_OUT ;
 int USB_RECIP_INTERFACE ;
 int USB_TYPE_CLASS ;
 int snd_usb_ctl_msg (int ,int ,int ,int,int,int,int *,int) ;
 int snd_usb_ctrl_intf (struct snd_usb_audio*) ;
 int usb_sndctrlpipe (int ,int ) ;

__attribute__((used)) static void dell_dock_init_vol(struct snd_usb_audio *chip, int ch, int id)
{
 u16 buf = 0;

 snd_usb_ctl_msg(chip->dev, usb_sndctrlpipe(chip->dev, 0), UAC_SET_CUR,
   USB_RECIP_INTERFACE | USB_TYPE_CLASS | USB_DIR_OUT,
   ch, snd_usb_ctrl_intf(chip) | (id << 8),
   &buf, 2);
}
