
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_pcm_substream {size_t number; } ;
struct snd_emu10k1_fx8010_pcm {int pcm_rec; } ;
struct TYPE_2__ {struct snd_emu10k1_fx8010_pcm* pcm; } ;
struct snd_emu10k1 {TYPE_1__ fx8010; } ;


 int fx8010_pb_trans_copy ;
 int snd_pcm_indirect_playback_transfer (struct snd_pcm_substream*,int *,int ) ;
 struct snd_emu10k1* snd_pcm_substream_chip (struct snd_pcm_substream*) ;

__attribute__((used)) static int snd_emu10k1_fx8010_playback_transfer(struct snd_pcm_substream *substream)
{
 struct snd_emu10k1 *emu = snd_pcm_substream_chip(substream);
 struct snd_emu10k1_fx8010_pcm *pcm = &emu->fx8010.pcm[substream->number];

 return snd_pcm_indirect_playback_transfer(substream, &pcm->pcm_rec,
        fx8010_pb_trans_copy);
}
