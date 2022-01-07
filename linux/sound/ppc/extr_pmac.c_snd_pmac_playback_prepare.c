
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_pmac {int playback; } ;
struct snd_pcm_substream {int dummy; } ;


 struct snd_pmac* snd_pcm_substream_chip (struct snd_pcm_substream*) ;
 int snd_pmac_pcm_prepare (struct snd_pmac*,int *,struct snd_pcm_substream*) ;

__attribute__((used)) static int snd_pmac_playback_prepare(struct snd_pcm_substream *subs)
{
 struct snd_pmac *chip = snd_pcm_substream_chip(subs);
 return snd_pmac_pcm_prepare(chip, &chip->playback, subs);
}
