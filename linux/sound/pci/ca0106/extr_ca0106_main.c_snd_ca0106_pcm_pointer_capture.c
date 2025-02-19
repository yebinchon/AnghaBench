
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_pcm_substream {struct snd_pcm_runtime* runtime; } ;
struct snd_pcm_runtime {scalar_t__ buffer_size; struct snd_ca0106_pcm* private_data; } ;
struct snd_ca0106_pcm {int channel_id; int running; } ;
struct snd_ca0106 {int dummy; } ;
typedef scalar_t__ snd_pcm_uframes_t ;


 int CAPTURE_POINTER ;
 scalar_t__ bytes_to_frames (struct snd_pcm_runtime*,scalar_t__) ;
 scalar_t__ snd_ca0106_ptr_read (struct snd_ca0106*,int ,int) ;
 struct snd_ca0106* snd_pcm_substream_chip (struct snd_pcm_substream*) ;

__attribute__((used)) static snd_pcm_uframes_t
snd_ca0106_pcm_pointer_capture(struct snd_pcm_substream *substream)
{
 struct snd_ca0106 *emu = snd_pcm_substream_chip(substream);
 struct snd_pcm_runtime *runtime = substream->runtime;
 struct snd_ca0106_pcm *epcm = runtime->private_data;
 snd_pcm_uframes_t ptr, ptr1, ptr2 = 0;
 int channel = epcm->channel_id;

 if (!epcm->running)
  return 0;

 ptr1 = snd_ca0106_ptr_read(emu, CAPTURE_POINTER, channel);
 ptr2 = bytes_to_frames(runtime, ptr1);
 ptr=ptr2;
        if (ptr >= runtime->buffer_size)
  ptr -= runtime->buffer_size;







 return ptr;
}
