
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_pcm_substream {struct snd_pcm_runtime* runtime; } ;
struct snd_pcm_runtime {unsigned int period_size; unsigned int buffer_size; struct snd_ca0106_pcm* private_data; } ;
struct snd_ca0106_pcm {int channel_id; int running; } ;
struct snd_ca0106 {TYPE_1__* card; } ;
typedef unsigned int snd_pcm_uframes_t ;
struct TYPE_2__ {int dev; } ;


 int PLAYBACK_LIST_PTR ;
 int PLAYBACK_POINTER ;
 scalar_t__ bytes_to_frames (struct snd_pcm_runtime*,unsigned int) ;
 int dev_warn (int ,char*) ;
 unsigned int snd_ca0106_ptr_read (struct snd_ca0106*,int ,int) ;
 struct snd_ca0106* snd_pcm_substream_chip (struct snd_pcm_substream*) ;

__attribute__((used)) static snd_pcm_uframes_t
snd_ca0106_pcm_pointer_playback(struct snd_pcm_substream *substream)
{
 struct snd_ca0106 *emu = snd_pcm_substream_chip(substream);
 struct snd_pcm_runtime *runtime = substream->runtime;
 struct snd_ca0106_pcm *epcm = runtime->private_data;
 unsigned int ptr, prev_ptr;
 int channel = epcm->channel_id;
 int timeout = 10;

 if (!epcm->running)
  return 0;

 prev_ptr = -1;
 do {
  ptr = snd_ca0106_ptr_read(emu, PLAYBACK_LIST_PTR, channel);
  ptr = (ptr >> 3) * runtime->period_size;
  ptr += bytes_to_frames(runtime,
   snd_ca0106_ptr_read(emu, PLAYBACK_POINTER, channel));
  if (ptr >= runtime->buffer_size)
   ptr -= runtime->buffer_size;
  if (prev_ptr == ptr)
   return ptr;
  prev_ptr = ptr;
 } while (--timeout);
 dev_warn(emu->card->dev, "ca0106: unstable DMA pointer!\n");
 return 0;
}
