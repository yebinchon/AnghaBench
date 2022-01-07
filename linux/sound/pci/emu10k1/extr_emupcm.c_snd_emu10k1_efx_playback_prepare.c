
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_pcm_substream {struct snd_pcm_runtime* runtime; } ;
struct snd_pcm_runtime {struct snd_emu10k1_pcm* private_data; } ;
struct snd_emu10k1_pcm {unsigned int start_addr; int * voices; int extra; } ;
struct snd_emu10k1 {int * efx_pcm_mixer; } ;


 unsigned int NUM_EFX_PLAYBACK ;
 int snd_emu10k1_pcm_init_voice (struct snd_emu10k1*,int,int,int ,unsigned int,unsigned int,int *) ;
 unsigned int snd_pcm_lib_buffer_bytes (struct snd_pcm_substream*) ;
 struct snd_emu10k1* snd_pcm_substream_chip (struct snd_pcm_substream*) ;

__attribute__((used)) static int snd_emu10k1_efx_playback_prepare(struct snd_pcm_substream *substream)
{
 struct snd_emu10k1 *emu = snd_pcm_substream_chip(substream);
 struct snd_pcm_runtime *runtime = substream->runtime;
 struct snd_emu10k1_pcm *epcm = runtime->private_data;
 unsigned int start_addr, end_addr;
 unsigned int channel_size;
 int i;

 start_addr = epcm->start_addr;
 end_addr = epcm->start_addr + snd_pcm_lib_buffer_bytes(substream);




 channel_size = ( end_addr - start_addr ) / NUM_EFX_PLAYBACK;

 snd_emu10k1_pcm_init_voice(emu, 1, 1, epcm->extra,
       start_addr, start_addr + (channel_size / 2), ((void*)0));


 snd_emu10k1_pcm_init_voice(emu, 1, 0, epcm->voices[0],
       start_addr, start_addr + channel_size,
       &emu->efx_pcm_mixer[0]);

 start_addr += channel_size;
 for (i = 1; i < NUM_EFX_PLAYBACK; i++) {
  snd_emu10k1_pcm_init_voice(emu, 0, 0, epcm->voices[i],
        start_addr, start_addr + channel_size,
        &emu->efx_pcm_mixer[i]);
  start_addr += channel_size;
 }

 return 0;
}
