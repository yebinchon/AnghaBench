
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_pcm_substream {size_t number; } ;
struct snd_emu10k1_pcm_mixer {int * epcm; } ;
struct snd_emu10k1 {struct snd_emu10k1_pcm_mixer* pcm_mixer; } ;


 int snd_emu10k1_pcm_mixer_notify (struct snd_emu10k1*,size_t,int ) ;
 struct snd_emu10k1* snd_pcm_substream_chip (struct snd_pcm_substream*) ;

__attribute__((used)) static int snd_emu10k1_playback_close(struct snd_pcm_substream *substream)
{
 struct snd_emu10k1 *emu = snd_pcm_substream_chip(substream);
 struct snd_emu10k1_pcm_mixer *mix = &emu->pcm_mixer[substream->number];

 mix->epcm = ((void*)0);
 snd_emu10k1_pcm_mixer_notify(emu, substream->number, 0);
 return 0;
}
