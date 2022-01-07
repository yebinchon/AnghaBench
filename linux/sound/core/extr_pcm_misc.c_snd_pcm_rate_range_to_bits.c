
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int count; unsigned int* list; } ;


 unsigned int SNDRV_PCM_RATE_KNOT ;
 TYPE_1__ snd_pcm_known_rates ;

unsigned int snd_pcm_rate_range_to_bits(unsigned int rate_min,
 unsigned int rate_max)
{
 unsigned int rates = 0;
 int i;

 for (i = 0; i < snd_pcm_known_rates.count; i++) {
  if (snd_pcm_known_rates.list[i] >= rate_min
   && snd_pcm_known_rates.list[i] <= rate_max)
   rates |= 1 << i;
 }

 if (!rates)
  rates = SNDRV_PCM_RATE_KNOT;

 return rates;
}
