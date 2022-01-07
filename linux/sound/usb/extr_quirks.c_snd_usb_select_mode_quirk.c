
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct usb_device {int dummy; } ;
struct snd_usb_substream {TYPE_2__* stream; struct usb_device* dev; } ;
struct audioformat {int formats; int iface; } ;
struct TYPE_4__ {TYPE_1__* chip; } ;
struct TYPE_3__ {int usb_id; } ;


 int SNDRV_PCM_FMTBIT_DSD_U32_BE ;
 int USB_DIR_OUT ;
 int USB_RECIP_INTERFACE ;
 int USB_TYPE_VENDOR ;
 scalar_t__ is_itf_usb_dsd_dac (int ) ;
 int msleep (int) ;
 int snd_usb_ctl_msg (struct usb_device*,int ,int ,int,int,int,int *,int ) ;
 int usb_set_interface (struct usb_device*,int ,int ) ;
 int usb_sndctrlpipe (struct usb_device*,int ) ;

int snd_usb_select_mode_quirk(struct snd_usb_substream *subs,
         struct audioformat *fmt)
{
 struct usb_device *dev = subs->dev;
 int err;

 if (is_itf_usb_dsd_dac(subs->stream->chip->usb_id)) {



  err = usb_set_interface(dev, fmt->iface, 0);
  if (err < 0)
   return err;

  msleep(20);


  if (fmt->formats & SNDRV_PCM_FMTBIT_DSD_U32_BE) {

   err = snd_usb_ctl_msg(dev, usb_sndctrlpipe(dev, 0), 0,
           USB_DIR_OUT|USB_TYPE_VENDOR|USB_RECIP_INTERFACE,
           1, 1, ((void*)0), 0);
   if (err < 0)
    return err;

  } else {


   err = snd_usb_ctl_msg(dev, usb_sndctrlpipe(dev, 0), 0,
           USB_DIR_OUT|USB_TYPE_VENDOR|USB_RECIP_INTERFACE,
           0, 1, ((void*)0), 0);
   if (err < 0)
    return err;

  }
  msleep(20);
 }
 return 0;
}
