
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct usb_device {int dev; } ;
struct pcm_runtime {TYPE_1__* chip; } ;
struct TYPE_2__ {struct usb_device* dev; } ;


 int EINVAL ;
 int HIFACE_RATE_176400 ;
 int HIFACE_RATE_192000 ;
 int HIFACE_RATE_352800 ;
 int HIFACE_RATE_384000 ;
 int HIFACE_RATE_44100 ;
 int HIFACE_RATE_48000 ;
 int HIFACE_RATE_88200 ;
 int HIFACE_RATE_96000 ;
 int HIFACE_SET_RATE_REQUEST ;
 int USB_DIR_OUT ;
 int USB_RECIP_OTHER ;
 int USB_TYPE_VENDOR ;
 int dev_err (int *,char*,unsigned int) ;
 int usb_control_msg (struct usb_device*,int ,int ,int,int ,int ,int *,int ,int) ;
 int usb_sndctrlpipe (struct usb_device*,int ) ;

__attribute__((used)) static int hiface_pcm_set_rate(struct pcm_runtime *rt, unsigned int rate)
{
 struct usb_device *device = rt->chip->dev;
 u16 rate_value;
 int ret;




 switch (rate) {
 case 44100:
  rate_value = HIFACE_RATE_44100;
  break;
 case 48000:
  rate_value = HIFACE_RATE_48000;
  break;
 case 88200:
  rate_value = HIFACE_RATE_88200;
  break;
 case 96000:
  rate_value = HIFACE_RATE_96000;
  break;
 case 176400:
  rate_value = HIFACE_RATE_176400;
  break;
 case 192000:
  rate_value = HIFACE_RATE_192000;
  break;
 case 352800:
  rate_value = HIFACE_RATE_352800;
  break;
 case 384000:
  rate_value = HIFACE_RATE_384000;
  break;
 default:
  dev_err(&device->dev, "Unsupported rate %d\n", rate);
  return -EINVAL;
 }
 ret = usb_control_msg(device, usb_sndctrlpipe(device, 0),
         HIFACE_SET_RATE_REQUEST,
         USB_DIR_OUT | USB_TYPE_VENDOR | USB_RECIP_OTHER,
         rate_value, 0, ((void*)0), 0, 100);
 if (ret < 0) {
  dev_err(&device->dev, "Error setting samplerate %d.\n", rate);
  return ret;
 }

 return 0;
}
