
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_pcm_substream {size_t number; struct snd_pcm_runtime* runtime; } ;
struct snd_pcm_runtime {int channels; struct snd_emu10k1_pcm* private_data; } ;
struct snd_emu10k1_pcm {unsigned int start_addr; scalar_t__* voices; scalar_t__ extra; } ;
struct snd_emu10k1 {int * pcm_mixer; } ;


 int snd_emu10k1_pcm_init_voice (struct snd_emu10k1*,int,int,scalar_t__,unsigned int,unsigned int,int *) ;
 unsigned int snd_pcm_lib_buffer_bytes (struct snd_pcm_substream*) ;
 unsigned int snd_pcm_lib_period_bytes (struct snd_pcm_substream*) ;
 struct snd_emu10k1* snd_pcm_substream_chip (struct snd_pcm_substream*) ;

__attribute__((used)) static int snd_emu10k1_playback_prepare(struct snd_pcm_substream *substream)
{
 struct snd_emu10k1 *emu = snd_pcm_substream_chip(substream);
 struct snd_pcm_runtime *runtime = substream->runtime;
 struct snd_emu10k1_pcm *epcm = runtime->private_data;
 unsigned int start_addr, end_addr;

 start_addr = epcm->start_addr;
 end_addr = snd_pcm_lib_period_bytes(substream);
 if (runtime->channels == 2) {
  start_addr >>= 1;
  end_addr >>= 1;
 }
 end_addr += start_addr;
 snd_emu10k1_pcm_init_voice(emu, 1, 1, epcm->extra,
       start_addr, end_addr, ((void*)0));
 start_addr = epcm->start_addr;
 end_addr = epcm->start_addr + snd_pcm_lib_buffer_bytes(substream);
 snd_emu10k1_pcm_init_voice(emu, 1, 0, epcm->voices[0],
       start_addr, end_addr,
       &emu->pcm_mixer[substream->number]);
 if (epcm->voices[1])
  snd_emu10k1_pcm_init_voice(emu, 0, 0, epcm->voices[1],
        start_addr, end_addr,
        &emu->pcm_mixer[substream->number]);
 return 0;
}
