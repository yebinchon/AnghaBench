
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_pcm_substream {struct snd_pcm_runtime* runtime; } ;
struct snd_pcm_runtime {scalar_t__ buffer_size; struct snd_emu10k1_pcm* private_data; } ;
struct snd_emu10k1_pcm {int running; } ;
struct snd_emu10k1 {TYPE_1__* card; } ;
typedef scalar_t__ snd_pcm_uframes_t ;
struct TYPE_2__ {int dev; } ;


 int CAPTURE_POINTER ;
 scalar_t__ bytes_to_frames (struct snd_pcm_runtime*,scalar_t__) ;
 int dev_warn (int ,char*) ;
 scalar_t__ snd_emu10k1_ptr20_read (struct snd_emu10k1*,int ,int) ;
 struct snd_emu10k1* snd_pcm_substream_chip (struct snd_pcm_substream*) ;

__attribute__((used)) static snd_pcm_uframes_t
snd_p16v_pcm_pointer_capture(struct snd_pcm_substream *substream)
{
 struct snd_emu10k1 *emu = snd_pcm_substream_chip(substream);
 struct snd_pcm_runtime *runtime = substream->runtime;
 struct snd_emu10k1_pcm *epcm = runtime->private_data;
 snd_pcm_uframes_t ptr, ptr1, ptr2 = 0;
 int channel = 0;

 if (!epcm->running)
  return 0;

 ptr1 = snd_emu10k1_ptr20_read(emu, CAPTURE_POINTER, channel);
 ptr2 = bytes_to_frames(runtime, ptr1);
 ptr=ptr2;
 if (ptr >= runtime->buffer_size) {
  ptr -= runtime->buffer_size;
  dev_warn(emu->card->dev, "buffer capture limited!\n");
 }







 return ptr;
}
