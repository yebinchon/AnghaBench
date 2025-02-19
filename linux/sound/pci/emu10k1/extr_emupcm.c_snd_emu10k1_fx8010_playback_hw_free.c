
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_pcm_substream {size_t number; } ;
struct snd_emu10k1_fx8010_pcm {unsigned int channels; scalar_t__* etram; } ;
struct TYPE_2__ {struct snd_emu10k1_fx8010_pcm* pcm; } ;
struct snd_emu10k1 {TYPE_1__ fx8010; } ;


 scalar_t__ TANKMEMADDRREGBASE ;
 int snd_emu10k1_ptr_write (struct snd_emu10k1*,scalar_t__,int ,int ) ;
 int snd_pcm_lib_free_pages (struct snd_pcm_substream*) ;
 struct snd_emu10k1* snd_pcm_substream_chip (struct snd_pcm_substream*) ;

__attribute__((used)) static int snd_emu10k1_fx8010_playback_hw_free(struct snd_pcm_substream *substream)
{
 struct snd_emu10k1 *emu = snd_pcm_substream_chip(substream);
 struct snd_emu10k1_fx8010_pcm *pcm = &emu->fx8010.pcm[substream->number];
 unsigned int i;

 for (i = 0; i < pcm->channels; i++)
  snd_emu10k1_ptr_write(emu, TANKMEMADDRREGBASE + 0x80 + pcm->etram[i], 0, 0);
 snd_pcm_lib_free_pages(substream);
 return 0;
}
