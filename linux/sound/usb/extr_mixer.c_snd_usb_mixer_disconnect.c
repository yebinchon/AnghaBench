
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_mixer_interface {int disconnected; int (* private_free ) (struct usb_mixer_interface*) ;scalar_t__ rc_urb; scalar_t__ urb; } ;


 int stub1 (struct usb_mixer_interface*) ;
 int usb_kill_urb (scalar_t__) ;

void snd_usb_mixer_disconnect(struct usb_mixer_interface *mixer)
{
 if (mixer->disconnected)
  return;
 if (mixer->urb)
  usb_kill_urb(mixer->urb);
 if (mixer->rc_urb)
  usb_kill_urb(mixer->rc_urb);
 if (mixer->private_free)
  mixer->private_free(mixer);
 mixer->disconnected = 1;
}
