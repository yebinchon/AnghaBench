
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_host_interface {int dummy; } ;
struct usb_device {int dummy; } ;
struct snd_usb_audio {struct usb_device* dev; } ;
struct audioformat {int altsetting; } ;
typedef int data ;


 int UAC2_CS_CUR ;
 int UAC2_EP_CS_PITCH ;
 int USB_DIR_OUT ;
 int USB_RECIP_ENDPOINT ;
 int USB_TYPE_CLASS ;
 int snd_usb_ctl_msg (struct usb_device*,int ,int ,int,int,int ,unsigned char*,int) ;
 int usb_audio_err (struct snd_usb_audio*,char*,int,int ) ;
 int usb_sndctrlpipe (struct usb_device*,int ) ;

__attribute__((used)) static int init_pitch_v2(struct snd_usb_audio *chip, int iface,
    struct usb_host_interface *alts,
    struct audioformat *fmt)
{
 struct usb_device *dev = chip->dev;
 unsigned char data[1];
 int err;

 data[0] = 1;
 err = snd_usb_ctl_msg(dev, usb_sndctrlpipe(dev, 0), UAC2_CS_CUR,
         USB_TYPE_CLASS | USB_RECIP_ENDPOINT | USB_DIR_OUT,
         UAC2_EP_CS_PITCH << 8, 0,
         data, sizeof(data));
 if (err < 0) {
  usb_audio_err(chip, "%d:%d: cannot set enable PITCH (v2)\n",
         iface, fmt->altsetting);
  return err;
 }

 return 0;
}
