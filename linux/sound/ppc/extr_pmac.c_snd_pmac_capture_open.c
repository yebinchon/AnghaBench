
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_pmac {int capture; } ;
struct snd_pcm_substream {TYPE_1__* runtime; } ;
struct TYPE_2__ {int hw; } ;


 struct snd_pmac* snd_pcm_substream_chip (struct snd_pcm_substream*) ;
 int snd_pmac_capture ;
 int snd_pmac_pcm_open (struct snd_pmac*,int *,struct snd_pcm_substream*) ;

__attribute__((used)) static int snd_pmac_capture_open(struct snd_pcm_substream *subs)
{
 struct snd_pmac *chip = snd_pcm_substream_chip(subs);

 subs->runtime->hw = snd_pmac_capture;
 return snd_pmac_pcm_open(chip, &chip->capture, subs);
}
