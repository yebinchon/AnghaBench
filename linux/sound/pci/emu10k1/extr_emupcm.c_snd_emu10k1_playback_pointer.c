
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_pcm_substream {struct snd_pcm_runtime* runtime; } ;
struct snd_pcm_runtime {unsigned int buffer_size; struct snd_emu10k1_pcm* private_data; } ;
struct snd_emu10k1_pcm {unsigned int ccca_start_addr; TYPE_1__** voices; int running; } ;
struct snd_emu10k1 {int dummy; } ;
typedef unsigned int snd_pcm_uframes_t ;
struct TYPE_2__ {int number; } ;


 int CCCA ;
 int snd_emu10k1_ptr_read (struct snd_emu10k1*,int ,int ) ;
 struct snd_emu10k1* snd_pcm_substream_chip (struct snd_pcm_substream*) ;

__attribute__((used)) static snd_pcm_uframes_t snd_emu10k1_playback_pointer(struct snd_pcm_substream *substream)
{
 struct snd_emu10k1 *emu = snd_pcm_substream_chip(substream);
 struct snd_pcm_runtime *runtime = substream->runtime;
 struct snd_emu10k1_pcm *epcm = runtime->private_data;
 unsigned int ptr;

 if (!epcm->running)
  return 0;
 ptr = snd_emu10k1_ptr_read(emu, CCCA, epcm->voices[0]->number) & 0x00ffffff;





 if (ptr < epcm->ccca_start_addr)
  ptr += runtime->buffer_size - epcm->ccca_start_addr;
 else {
  ptr -= epcm->ccca_start_addr;
  if (ptr >= runtime->buffer_size)
   ptr -= runtime->buffer_size;
 }







 return ptr;
}
