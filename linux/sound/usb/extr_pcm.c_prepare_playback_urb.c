
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u8 ;
struct urb {unsigned int transfer_buffer_length; int * transfer_buffer; scalar_t__ number_of_packets; TYPE_1__* iso_frame_desc; struct snd_urb_ctx* context; } ;
struct snd_usb_substream {scalar_t__ frame_limit; scalar_t__ transfer_done; scalar_t__ fmt_type; scalar_t__ pcm_format; int hwptr_done; unsigned int last_delay; int last_frame_number; int trigger_tstamp_pending_update; TYPE_3__* pcm_substream; int lock; int dev; int tx_length_quirk; TYPE_2__* cur_audiofmt; struct snd_usb_endpoint* data_endpoint; } ;
struct snd_usb_endpoint {scalar_t__ max_urb_frames; unsigned int stride; } ;
struct snd_urb_ctx {int packets; int* packet_size; } ;
struct snd_pcm_runtime {int frame_bits; scalar_t__ period_size; int buffer_size; unsigned int delay; int trigger_tstamp; int * dma_area; } ;
struct TYPE_6__ {struct snd_pcm_runtime* runtime; } ;
struct TYPE_5__ {scalar_t__ dsd_bitrev; scalar_t__ dsd_dop; } ;
struct TYPE_4__ {unsigned int offset; unsigned int length; } ;


 scalar_t__ SNDRV_PCM_FORMAT_DSD_U16_LE ;
 scalar_t__ SNDRV_PCM_FORMAT_DSD_U8 ;
 scalar_t__ UAC_FORMAT_TYPE_II ;
 int bitrev8 (int ) ;
 int copy_to_urb (struct snd_usb_substream*,struct urb*,int ,int,unsigned int) ;
 unsigned int copy_to_urb_quirk (struct snd_usb_substream*,struct urb*,int,unsigned int) ;
 int fill_playback_urb_dsd_dop (struct snd_usb_substream*,struct urb*,unsigned int) ;
 int snd_pcm_gettime (struct snd_pcm_runtime*,int *) ;
 int snd_pcm_period_elapsed (TYPE_3__*) ;
 int snd_usb_endpoint_implicit_feedback_sink (struct snd_usb_endpoint*) ;
 unsigned int snd_usb_endpoint_next_packet_size (struct snd_usb_endpoint*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 scalar_t__ unlikely (int) ;
 int usb_get_current_frame_number (int ) ;

__attribute__((used)) static void prepare_playback_urb(struct snd_usb_substream *subs,
     struct urb *urb)
{
 struct snd_pcm_runtime *runtime = subs->pcm_substream->runtime;
 struct snd_usb_endpoint *ep = subs->data_endpoint;
 struct snd_urb_ctx *ctx = urb->context;
 unsigned int counts, frames, bytes;
 int i, stride, period_elapsed = 0;
 unsigned long flags;

 stride = runtime->frame_bits >> 3;

 frames = 0;
 urb->number_of_packets = 0;
 spin_lock_irqsave(&subs->lock, flags);
 subs->frame_limit += ep->max_urb_frames;
 for (i = 0; i < ctx->packets; i++) {
  if (ctx->packet_size[i])
   counts = ctx->packet_size[i];
  else
   counts = snd_usb_endpoint_next_packet_size(ep);


  urb->iso_frame_desc[i].offset = frames * ep->stride;
  urb->iso_frame_desc[i].length = counts * ep->stride;
  frames += counts;
  urb->number_of_packets++;
  subs->transfer_done += counts;
  if (subs->transfer_done >= runtime->period_size) {
   subs->transfer_done -= runtime->period_size;
   subs->frame_limit = 0;
   period_elapsed = 1;
   if (subs->fmt_type == UAC_FORMAT_TYPE_II) {
    if (subs->transfer_done > 0) {


     frames -= subs->transfer_done;
     counts -= subs->transfer_done;
     urb->iso_frame_desc[i].length =
      counts * ep->stride;
     subs->transfer_done = 0;
    }
    i++;
    if (i < ctx->packets) {

     urb->iso_frame_desc[i].offset =
      frames * ep->stride;
     urb->iso_frame_desc[i].length = 0;
     urb->number_of_packets++;
    }
    break;
   }
  }

  if ((period_elapsed ||
    subs->transfer_done >= subs->frame_limit) &&
      !snd_usb_endpoint_implicit_feedback_sink(ep))
   break;
 }
 bytes = frames * ep->stride;

 if (unlikely(subs->pcm_format == SNDRV_PCM_FORMAT_DSD_U16_LE &&
       subs->cur_audiofmt->dsd_dop)) {
  fill_playback_urb_dsd_dop(subs, urb, bytes);
 } else if (unlikely(subs->pcm_format == SNDRV_PCM_FORMAT_DSD_U8 &&
      subs->cur_audiofmt->dsd_bitrev)) {

  u8 *buf = urb->transfer_buffer;
  for (i = 0; i < bytes; i++) {
   int idx = (subs->hwptr_done + i)
    % (runtime->buffer_size * stride);
   buf[i] = bitrev8(runtime->dma_area[idx]);
  }

  subs->hwptr_done += bytes;
  if (subs->hwptr_done >= runtime->buffer_size * stride)
   subs->hwptr_done -= runtime->buffer_size * stride;
 } else {

  if (!subs->tx_length_quirk)
   copy_to_urb(subs, urb, 0, stride, bytes);
  else
   bytes = copy_to_urb_quirk(subs, urb, stride, bytes);

 }


 runtime->delay = subs->last_delay;
 runtime->delay += frames;
 subs->last_delay = runtime->delay;


 subs->last_frame_number = usb_get_current_frame_number(subs->dev);
 subs->last_frame_number &= 0xFF;

 if (subs->trigger_tstamp_pending_update) {



  snd_pcm_gettime(runtime, &runtime->trigger_tstamp);
  subs->trigger_tstamp_pending_update = 0;
 }

 spin_unlock_irqrestore(&subs->lock, flags);
 urb->transfer_buffer_length = bytes;
 if (period_elapsed)
  snd_pcm_period_elapsed(subs->pcm_substream);
}
