
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct usb_mixer_interface {int* rc_buffer; int rc_code; int rc_waitq; struct rc_config* rc_cfg; } ;
struct urb {scalar_t__ status; scalar_t__ actual_length; struct usb_mixer_interface* context; } ;
struct rc_config {scalar_t__ min_packet_length; size_t offset; int length; int mute_code; int mute_mixer_id; } ;


 int snd_usb_mixer_notify_id (struct usb_mixer_interface*,int ) ;
 int wake_up (int *) ;
 int wmb () ;

__attribute__((used)) static void snd_usb_soundblaster_remote_complete(struct urb *urb)
{
 struct usb_mixer_interface *mixer = urb->context;
 const struct rc_config *rc = mixer->rc_cfg;
 u32 code;

 if (urb->status < 0 || urb->actual_length < rc->min_packet_length)
  return;

 code = mixer->rc_buffer[rc->offset];
 if (rc->length == 2)
  code |= mixer->rc_buffer[rc->offset + 1] << 8;


 if (code == rc->mute_code)
  snd_usb_mixer_notify_id(mixer, rc->mute_mixer_id);
 mixer->rc_code = code;
 wmb();
 wake_up(&mixer->rc_waitq);
}
