
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ct_atc_pcm {int substream; } ;


 int snd_pcm_period_elapsed (int ) ;

__attribute__((used)) static void ct_atc_pcm_interrupt(struct ct_atc_pcm *atc_pcm)
{
 struct ct_atc_pcm *apcm = atc_pcm;

 if (!apcm->substream)
  return;

 snd_pcm_period_elapsed(apcm->substream);
}
