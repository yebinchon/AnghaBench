
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct usb_mixer_interface {TYPE_3__* chip; TYPE_1__* rc_cfg; TYPE_2__* rc_urb; } ;
struct TYPE_6__ {int usb_id; int dev; } ;
struct TYPE_5__ {int dev; } ;
struct TYPE_4__ {int mute_mixer_id; } ;


 int GFP_ATOMIC ;
 int USB_ID (int,int) ;
 int snd_usb_mixer_notify_id (struct usb_mixer_interface*,int ) ;
 int usb_audio_dbg (TYPE_3__*,char*,int) ;
 int usb_submit_urb (TYPE_2__*,int ) ;

void snd_usb_mixer_rc_memory_change(struct usb_mixer_interface *mixer,
        int unitid)
{
 if (!mixer->rc_cfg)
  return;

 switch (unitid) {
 case 0:
  mixer->rc_urb->dev = mixer->chip->dev;
  usb_submit_urb(mixer->rc_urb, GFP_ATOMIC);
  break;
 case 4:
 case 7:
 case 19:
 case 20:
  break;

 case 3:
  if (mixer->chip->usb_id == USB_ID(0x041e, 0x3040) ||
      mixer->chip->usb_id == USB_ID(0x041e, 0x3048))
   snd_usb_mixer_notify_id(mixer, mixer->rc_cfg->mute_mixer_id);
  break;
 default:
  usb_audio_dbg(mixer->chip, "memory change in unknown unit %d\n", unitid);
  break;
 }
}
