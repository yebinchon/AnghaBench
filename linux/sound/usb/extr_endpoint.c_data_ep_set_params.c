
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct snd_usb_endpoint {int datainterval; int stride; int silence_value; int freqmax; int freqn; unsigned int maxpacksize; unsigned int curpacksize; unsigned int syncinterval; unsigned int nurbs; int pipe; TYPE_1__* chip; struct snd_urb_ctx* urb; void* max_urb_frames; scalar_t__ fill_max; } ;
struct snd_urb_ctx {unsigned int index; unsigned int packets; unsigned int buffer_size; int ready_list; TYPE_2__* urb; struct snd_usb_endpoint* ep; } ;
struct audioformat {int datainterval; scalar_t__ fmt_type; scalar_t__ dsd_dop; } ;
typedef int snd_pcm_format_t ;
typedef int __le32 ;
struct TYPE_4__ {int interval; int complete; struct snd_urb_ctx* context; int transfer_flags; int pipe; int transfer_buffer; int transfer_dma; } ;
struct TYPE_3__ {int dev; int tx_length_quirk; } ;


 void* DIV_ROUND_UP (unsigned int,unsigned int) ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 unsigned int MAX_PACKS ;
 unsigned int MAX_PACKS_HS ;
 unsigned int MAX_QUEUE ;
 unsigned int MAX_URBS ;






 scalar_t__ UAC_FORMAT_TYPE_II ;
 int URB_NO_TRANSFER_DMA_MAP ;
 scalar_t__ USB_SPEED_FULL ;
 scalar_t__ USB_SPEED_WIRELESS ;
 unsigned int max (unsigned int,unsigned int) ;
 void* min (unsigned int,unsigned int) ;
 int release_urbs (struct snd_usb_endpoint*,int ) ;
 int snd_complete_urb ;
 unsigned int snd_pcm_format_physical_width (int) ;
 scalar_t__ snd_usb_endpoint_implicit_feedback_sink (struct snd_usb_endpoint*) ;
 scalar_t__ snd_usb_get_speed (int ) ;
 int usb_alloc_coherent (int ,unsigned int,int ,int *) ;
 TYPE_2__* usb_alloc_urb (unsigned int,int ) ;
 scalar_t__ usb_pipein (int ) ;
 scalar_t__ usb_pipeout (int ) ;

__attribute__((used)) static int data_ep_set_params(struct snd_usb_endpoint *ep,
         snd_pcm_format_t pcm_format,
         unsigned int channels,
         unsigned int period_bytes,
         unsigned int frames_per_period,
         unsigned int periods_per_buffer,
         struct audioformat *fmt,
         struct snd_usb_endpoint *sync_ep)
{
 unsigned int maxsize, minsize, packs_per_ms, max_packs_per_urb;
 unsigned int max_packs_per_period, urbs_per_period, urb_packs;
 unsigned int max_urbs, i;
 int frame_bits = snd_pcm_format_physical_width(pcm_format) * channels;
 int tx_length_quirk = (ep->chip->tx_length_quirk &&
          usb_pipeout(ep->pipe));

 if (pcm_format == 132 && fmt->dsd_dop) {





  frame_bits += channels << 3;
 }

 ep->datainterval = fmt->datainterval;
 ep->stride = frame_bits >> 3;

 switch (pcm_format) {
 case 128:
  ep->silence_value = 0x80;
  break;
 case 129:
 case 132:
 case 130:
 case 133:
 case 131:
  ep->silence_value = 0x69;
  break;
 default:
  ep->silence_value = 0;
 }


 ep->freqmax = ep->freqn + (ep->freqn >> 1);
 maxsize = (((ep->freqmax << ep->datainterval) + 0xffff) >> 16) *
    (frame_bits >> 3);
 if (tx_length_quirk)
  maxsize += sizeof(__le32);

 if (ep->maxpacksize && ep->maxpacksize < maxsize) {

  unsigned int data_maxsize = maxsize = ep->maxpacksize;

  if (tx_length_quirk)

   data_maxsize -= sizeof(__le32);
  ep->freqmax = (data_maxsize / (frame_bits >> 3))
    << (16 - ep->datainterval);
 }

 if (ep->fill_max)
  ep->curpacksize = ep->maxpacksize;
 else
  ep->curpacksize = maxsize;

 if (snd_usb_get_speed(ep->chip->dev) != USB_SPEED_FULL) {
  packs_per_ms = 8 >> ep->datainterval;
  max_packs_per_urb = MAX_PACKS_HS;
 } else {
  packs_per_ms = 1;
  max_packs_per_urb = MAX_PACKS;
 }
 if (sync_ep && !snd_usb_endpoint_implicit_feedback_sink(ep))
  max_packs_per_urb = min(max_packs_per_urb,
     1U << sync_ep->syncinterval);
 max_packs_per_urb = max(1u, max_packs_per_urb >> ep->datainterval);
 if (usb_pipein(ep->pipe) ||
   snd_usb_endpoint_implicit_feedback_sink(ep)) {

  urb_packs = packs_per_ms;






  if (snd_usb_get_speed(ep->chip->dev) == USB_SPEED_WIRELESS) {
   int interval = ep->datainterval;
   while (interval < 5) {
    urb_packs <<= 1;
    ++interval;
   }
  }

  urb_packs = min(max_packs_per_urb, urb_packs);
  while (urb_packs > 1 && urb_packs * maxsize >= period_bytes)
   urb_packs >>= 1;
  ep->nurbs = MAX_URBS;







 } else {

  minsize = (ep->freqn >> (16 - ep->datainterval)) *
    (frame_bits >> 3);

  if (sync_ep)
   minsize -= minsize >> 3;
  minsize = max(minsize, 1u);


  max_packs_per_period = DIV_ROUND_UP(period_bytes, minsize);


  urbs_per_period = DIV_ROUND_UP(max_packs_per_period,
    max_packs_per_urb);

  urb_packs = DIV_ROUND_UP(max_packs_per_period, urbs_per_period);


  ep->max_urb_frames = DIV_ROUND_UP(frames_per_period,
     urbs_per_period);


  max_urbs = min((unsigned) MAX_URBS,
    MAX_QUEUE * packs_per_ms / urb_packs);
  ep->nurbs = min(max_urbs, urbs_per_period * periods_per_buffer);
 }


 for (i = 0; i < ep->nurbs; i++) {
  struct snd_urb_ctx *u = &ep->urb[i];
  u->index = i;
  u->ep = ep;
  u->packets = urb_packs;
  u->buffer_size = maxsize * u->packets;

  if (fmt->fmt_type == UAC_FORMAT_TYPE_II)
   u->packets++;
  u->urb = usb_alloc_urb(u->packets, GFP_KERNEL);
  if (!u->urb)
   goto out_of_memory;

  u->urb->transfer_buffer =
   usb_alloc_coherent(ep->chip->dev, u->buffer_size,
        GFP_KERNEL, &u->urb->transfer_dma);
  if (!u->urb->transfer_buffer)
   goto out_of_memory;
  u->urb->pipe = ep->pipe;
  u->urb->transfer_flags = URB_NO_TRANSFER_DMA_MAP;
  u->urb->interval = 1 << ep->datainterval;
  u->urb->context = u;
  u->urb->complete = snd_complete_urb;
  INIT_LIST_HEAD(&u->ready_list);
 }

 return 0;

out_of_memory:
 release_urbs(ep, 0);
 return -ENOMEM;
}
