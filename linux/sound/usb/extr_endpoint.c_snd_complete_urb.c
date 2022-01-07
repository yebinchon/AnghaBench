
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct urb {int status; struct snd_urb_ctx* context; } ;
struct snd_usb_endpoint {int active_mask; TYPE_1__* data_subs; TYPE_2__* chip; int flags; int lock; int ready_playback_urbs; int pipe; } ;
struct snd_urb_ctx {int index; int ready_list; struct snd_usb_endpoint* ep; } ;
struct snd_pcm_substream {int dummy; } ;
struct TYPE_4__ {int shutdown; } ;
struct TYPE_3__ {struct snd_pcm_substream* pcm_substream; } ;


 int ECONNRESET ;
 int ENODEV ;
 int ENOENT ;
 int EP_FLAG_RUNNING ;
 int ESHUTDOWN ;
 int GFP_ATOMIC ;
 int atomic_read (int *) ;
 int clear_bit (int ,int *) ;
 int list_add_tail (int *,int *) ;
 int prepare_inbound_urb (struct snd_usb_endpoint*,struct snd_urb_ctx*) ;
 int prepare_outbound_urb (struct snd_usb_endpoint*,struct snd_urb_ctx*) ;
 int queue_pending_output_urbs (struct snd_usb_endpoint*) ;
 int retire_inbound_urb (struct snd_usb_endpoint*,struct snd_urb_ctx*) ;
 int retire_outbound_urb (struct snd_usb_endpoint*,struct snd_urb_ctx*) ;
 int snd_pcm_stop_xrun (struct snd_pcm_substream*) ;
 scalar_t__ snd_usb_endpoint_implicit_feedback_sink (struct snd_usb_endpoint*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int test_bit (int ,int *) ;
 scalar_t__ unlikely (int) ;
 int usb_audio_err (TYPE_2__*,char*,int) ;
 scalar_t__ usb_pipeout (int ) ;
 int usb_submit_urb (struct urb*,int ) ;

__attribute__((used)) static void snd_complete_urb(struct urb *urb)
{
 struct snd_urb_ctx *ctx = urb->context;
 struct snd_usb_endpoint *ep = ctx->ep;
 struct snd_pcm_substream *substream;
 unsigned long flags;
 int err;

 if (unlikely(urb->status == -ENOENT ||
       urb->status == -ENODEV ||
       urb->status == -ECONNRESET ||
       urb->status == -ESHUTDOWN))
  goto exit_clear;

 if (unlikely(atomic_read(&ep->chip->shutdown)))
  goto exit_clear;

 if (unlikely(!test_bit(EP_FLAG_RUNNING, &ep->flags)))
  goto exit_clear;

 if (usb_pipeout(ep->pipe)) {
  retire_outbound_urb(ep, ctx);

  if (unlikely(!test_bit(EP_FLAG_RUNNING, &ep->flags)))
   goto exit_clear;

  if (snd_usb_endpoint_implicit_feedback_sink(ep)) {
   spin_lock_irqsave(&ep->lock, flags);
   list_add_tail(&ctx->ready_list, &ep->ready_playback_urbs);
   spin_unlock_irqrestore(&ep->lock, flags);
   queue_pending_output_urbs(ep);

   goto exit_clear;
  }

  prepare_outbound_urb(ep, ctx);
 } else {
  retire_inbound_urb(ep, ctx);

  if (unlikely(!test_bit(EP_FLAG_RUNNING, &ep->flags)))
   goto exit_clear;

  prepare_inbound_urb(ep, ctx);
 }

 err = usb_submit_urb(urb, GFP_ATOMIC);
 if (err == 0)
  return;

 usb_audio_err(ep->chip, "cannot submit urb (err = %d)\n", err);
 if (ep->data_subs && ep->data_subs->pcm_substream) {
  substream = ep->data_subs->pcm_substream;
  snd_pcm_stop_xrun(substream);
 }

exit_clear:
 clear_bit(ctx->index, &ep->active_mask);
}
