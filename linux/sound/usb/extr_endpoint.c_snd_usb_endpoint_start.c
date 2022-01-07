
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct urb {int context; } ;
struct snd_usb_endpoint {int use_count; unsigned int nurbs; scalar_t__ flags; scalar_t__ active_mask; TYPE_1__* chip; int pipe; struct snd_urb_ctx* urb; int ready_playback_urbs; scalar_t__ phase; scalar_t__ unlink_mask; } ;
struct snd_urb_ctx {struct urb* urb; int ready_list; } ;
struct TYPE_2__ {int shutdown; } ;


 int EBADFD ;
 int EPIPE ;
 unsigned int EP_FLAG_RUNNING ;
 int GFP_ATOMIC ;
 scalar_t__ atomic_read (int *) ;
 int clear_bit (unsigned int,scalar_t__*) ;
 int deactivate_urbs (struct snd_usb_endpoint*,int) ;
 int list_add_tail (int *,int *) ;
 int prepare_inbound_urb (struct snd_usb_endpoint*,int ) ;
 int prepare_outbound_urb (struct snd_usb_endpoint*,int ) ;
 int set_bit (unsigned int,scalar_t__*) ;
 scalar_t__ snd_BUG_ON (int) ;
 scalar_t__ snd_usb_endpoint_implicit_feedback_sink (struct snd_usb_endpoint*) ;
 int snd_usb_endpoint_start_quirk (struct snd_usb_endpoint*) ;
 int usb_audio_err (TYPE_1__*,char*,unsigned int,int,int ) ;
 int usb_error_string (int) ;
 scalar_t__ usb_pipeout (int ) ;
 int usb_submit_urb (struct urb*,int ) ;

int snd_usb_endpoint_start(struct snd_usb_endpoint *ep)
{
 int err;
 unsigned int i;

 if (atomic_read(&ep->chip->shutdown))
  return -EBADFD;


 if (++ep->use_count != 1)
  return 0;


 deactivate_urbs(ep, 0);

 ep->active_mask = 0;
 ep->unlink_mask = 0;
 ep->phase = 0;

 snd_usb_endpoint_start_quirk(ep);
 set_bit(EP_FLAG_RUNNING, &ep->flags);

 if (snd_usb_endpoint_implicit_feedback_sink(ep)) {
  for (i = 0; i < ep->nurbs; i++) {
   struct snd_urb_ctx *ctx = ep->urb + i;
   list_add_tail(&ctx->ready_list, &ep->ready_playback_urbs);
  }

  return 0;
 }

 for (i = 0; i < ep->nurbs; i++) {
  struct urb *urb = ep->urb[i].urb;

  if (snd_BUG_ON(!urb))
   goto __error;

  if (usb_pipeout(ep->pipe)) {
   prepare_outbound_urb(ep, urb->context);
  } else {
   prepare_inbound_urb(ep, urb->context);
  }

  err = usb_submit_urb(urb, GFP_ATOMIC);
  if (err < 0) {
   usb_audio_err(ep->chip,
    "cannot submit urb %d, error %d: %s\n",
    i, err, usb_error_string(err));
   goto __error;
  }
  set_bit(i, &ep->active_mask);
 }

 return 0;

__error:
 clear_bit(EP_FLAG_RUNNING, &ep->flags);
 ep->use_count--;
 deactivate_urbs(ep, 0);
 return -EPIPE;
}
