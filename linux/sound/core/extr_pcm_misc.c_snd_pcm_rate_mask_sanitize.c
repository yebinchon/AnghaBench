
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int SNDRV_PCM_RATE_CONTINUOUS ;
 unsigned int SNDRV_PCM_RATE_KNOT ;

__attribute__((used)) static unsigned int snd_pcm_rate_mask_sanitize(unsigned int rates)
{
 if (rates & SNDRV_PCM_RATE_CONTINUOUS)
  return SNDRV_PCM_RATE_CONTINUOUS;
 else if (rates & SNDRV_PCM_RATE_KNOT)
  return SNDRV_PCM_RATE_KNOT;
 return rates;
}
