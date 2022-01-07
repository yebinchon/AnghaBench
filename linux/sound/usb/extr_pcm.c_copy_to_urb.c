
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct urb {scalar_t__ transfer_buffer; } ;
struct snd_usb_substream {unsigned int hwptr_done; TYPE_1__* pcm_substream; } ;
struct snd_pcm_runtime {int buffer_size; scalar_t__ dma_area; } ;
struct TYPE_2__ {struct snd_pcm_runtime* runtime; } ;


 int memcpy (scalar_t__,scalar_t__,unsigned int) ;

__attribute__((used)) static void copy_to_urb(struct snd_usb_substream *subs, struct urb *urb,
   int offset, int stride, unsigned int bytes)
{
 struct snd_pcm_runtime *runtime = subs->pcm_substream->runtime;

 if (subs->hwptr_done + bytes > runtime->buffer_size * stride) {

  unsigned int bytes1 =
   runtime->buffer_size * stride - subs->hwptr_done;
  memcpy(urb->transfer_buffer + offset,
         runtime->dma_area + subs->hwptr_done, bytes1);
  memcpy(urb->transfer_buffer + offset + bytes1,
         runtime->dma_area, bytes - bytes1);
 } else {
  memcpy(urb->transfer_buffer + offset,
         runtime->dma_area + subs->hwptr_done, bytes);
 }
 subs->hwptr_done += bytes;
 if (subs->hwptr_done >= runtime->buffer_size * stride)
  subs->hwptr_done -= runtime->buffer_size * stride;
}
