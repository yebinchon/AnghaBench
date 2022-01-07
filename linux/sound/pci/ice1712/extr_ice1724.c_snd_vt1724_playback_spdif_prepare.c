
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_pcm_substream {TYPE_1__* runtime; } ;
struct snd_ice1712 {int force_pdma4; } ;
struct TYPE_2__ {int rate; } ;


 struct snd_ice1712* snd_pcm_substream_chip (struct snd_pcm_substream*) ;
 int snd_vt1724_pcm_prepare (struct snd_pcm_substream*) ;
 int update_spdif_rate (struct snd_ice1712*,int ) ;

__attribute__((used)) static int snd_vt1724_playback_spdif_prepare(struct snd_pcm_substream *substream)
{
 struct snd_ice1712 *ice = snd_pcm_substream_chip(substream);
 if (!ice->force_pdma4)
  update_spdif_rate(ice, substream->runtime->rate);
 return snd_vt1724_pcm_prepare(substream);
}
