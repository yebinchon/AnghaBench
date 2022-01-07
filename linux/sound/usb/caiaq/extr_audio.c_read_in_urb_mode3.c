
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_iso_packet_descriptor {int offset; int actual_length; } ;
struct urb {unsigned char* transfer_buffer; } ;
struct snd_usb_caiaqdev {int n_streams; int input_panic; int* audio_in_buf_pos; int* period_in_count; scalar_t__ first_packet; struct snd_pcm_substream** sub_capture; } ;
struct snd_pcm_substream {struct snd_pcm_runtime* runtime; } ;
struct snd_pcm_runtime {char* dma_area; int buffer_size; } ;
struct device {int dummy; } ;


 int BYTES_PER_SAMPLE ;
 int BYTES_PER_SAMPLE_USB ;
 int CHANNELS_PER_STREAM ;
 struct device* caiaqdev_to_dev (struct snd_usb_caiaqdev*) ;
 int dev_warn (struct device*,char*,int,unsigned char,int,int,int) ;
 int frames_to_bytes (struct snd_pcm_runtime*,int ) ;

__attribute__((used)) static void read_in_urb_mode3(struct snd_usb_caiaqdev *cdev,
         const struct urb *urb,
         const struct usb_iso_packet_descriptor *iso)
{
 unsigned char *usb_buf = urb->transfer_buffer + iso->offset;
 struct device *dev = caiaqdev_to_dev(cdev);
 int stream, i;


 if (iso->actual_length % (BYTES_PER_SAMPLE_USB * CHANNELS_PER_STREAM))
  return;

 for (i = 0; i < iso->actual_length;) {
  for (stream = 0; stream < cdev->n_streams; stream++) {
   struct snd_pcm_substream *sub = cdev->sub_capture[stream];
   char *audio_buf = ((void*)0);
   int c, n, sz = 0;

   if (sub && !cdev->input_panic) {
    struct snd_pcm_runtime *rt = sub->runtime;
    audio_buf = rt->dma_area;
    sz = frames_to_bytes(rt, rt->buffer_size);
   }

   for (c = 0; c < CHANNELS_PER_STREAM; c++) {

    if (audio_buf) {
     for (n = 0; n < BYTES_PER_SAMPLE; n++) {
      audio_buf[cdev->audio_in_buf_pos[stream]++] = usb_buf[i+n];

      if (cdev->audio_in_buf_pos[stream] == sz)
       cdev->audio_in_buf_pos[stream] = 0;
     }

     cdev->period_in_count[stream] += BYTES_PER_SAMPLE;
    }

    i += BYTES_PER_SAMPLE;

    if (usb_buf[i] != ((stream << 1) | c) &&
        !cdev->first_packet) {
     if (!cdev->input_panic)
      dev_warn(dev, " EXPECTED: %02x got %02x, c %d, stream %d, i %d\n",
        ((stream << 1) | c), usb_buf[i], c, stream, i);
     cdev->input_panic = 1;
    }

    i++;
   }
  }
 }

 if (cdev->first_packet > 0)
  cdev->first_packet--;
}
