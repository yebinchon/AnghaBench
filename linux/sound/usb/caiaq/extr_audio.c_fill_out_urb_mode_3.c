
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_iso_packet_descriptor {int offset; int length; } ;
struct urb {unsigned char* transfer_buffer; } ;
struct snd_usb_caiaqdev {int n_streams; int* audio_out_buf_pos; int* period_out_count; struct snd_pcm_substream** sub_playback; } ;
struct snd_pcm_substream {struct snd_pcm_runtime* runtime; } ;
struct snd_pcm_runtime {char* dma_area; int buffer_size; } ;


 int BYTES_PER_SAMPLE ;
 int CHANNELS_PER_STREAM ;
 int frames_to_bytes (struct snd_pcm_runtime*,int ) ;

__attribute__((used)) static void fill_out_urb_mode_3(struct snd_usb_caiaqdev *cdev,
    struct urb *urb,
    const struct usb_iso_packet_descriptor *iso)
{
 unsigned char *usb_buf = urb->transfer_buffer + iso->offset;
 int stream, i;

 for (i = 0; i < iso->length;) {
  for (stream = 0; stream < cdev->n_streams; stream++) {
   struct snd_pcm_substream *sub = cdev->sub_playback[stream];
   char *audio_buf = ((void*)0);
   int c, n, sz = 0;

   if (sub) {
    struct snd_pcm_runtime *rt = sub->runtime;
    audio_buf = rt->dma_area;
    sz = frames_to_bytes(rt, rt->buffer_size);
   }

   for (c = 0; c < CHANNELS_PER_STREAM; c++) {
    for (n = 0; n < BYTES_PER_SAMPLE; n++) {
     if (audio_buf) {
      usb_buf[i+n] = audio_buf[cdev->audio_out_buf_pos[stream]++];

      if (cdev->audio_out_buf_pos[stream] == sz)
       cdev->audio_out_buf_pos[stream] = 0;
     } else {
      usb_buf[i+n] = 0;
     }
    }

    if (audio_buf)
     cdev->period_out_count[stream] += BYTES_PER_SAMPLE;

    i += BYTES_PER_SAMPLE;


    usb_buf[i++] = (stream << 1) | c;
   }
  }
 }
}
