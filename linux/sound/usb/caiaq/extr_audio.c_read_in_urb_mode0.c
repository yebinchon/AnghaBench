
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_iso_packet_descriptor {int offset; int actual_length; } ;
struct urb {unsigned char* transfer_buffer; } ;
struct snd_usb_caiaqdev {int n_streams; int* audio_in_buf_pos; int * period_in_count; struct snd_pcm_substream** sub_capture; } ;
struct snd_pcm_substream {struct snd_pcm_runtime* runtime; } ;
struct snd_pcm_runtime {char* dma_area; int buffer_size; } ;


 scalar_t__ all_substreams_zero (struct snd_pcm_substream**) ;
 int frames_to_bytes (struct snd_pcm_runtime*,int ) ;

__attribute__((used)) static void read_in_urb_mode0(struct snd_usb_caiaqdev *cdev,
         const struct urb *urb,
         const struct usb_iso_packet_descriptor *iso)
{
 unsigned char *usb_buf = urb->transfer_buffer + iso->offset;
 struct snd_pcm_substream *sub;
 int stream, i;

 if (all_substreams_zero(cdev->sub_capture))
  return;

 for (i = 0; i < iso->actual_length;) {
  for (stream = 0; stream < cdev->n_streams; stream++, i++) {
   sub = cdev->sub_capture[stream];
   if (sub) {
    struct snd_pcm_runtime *rt = sub->runtime;
    char *audio_buf = rt->dma_area;
    int sz = frames_to_bytes(rt, rt->buffer_size);
    audio_buf[cdev->audio_in_buf_pos[stream]++]
     = usb_buf[i];
    cdev->period_in_count[stream]++;
    if (cdev->audio_in_buf_pos[stream] == sz)
     cdev->audio_in_buf_pos[stream] = 0;
   }
  }
 }
}
