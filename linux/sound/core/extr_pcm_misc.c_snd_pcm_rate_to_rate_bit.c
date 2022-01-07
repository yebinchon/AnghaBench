
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {unsigned int count; unsigned int* list; } ;


 unsigned int SNDRV_PCM_RATE_KNOT ;
 TYPE_1__ snd_pcm_known_rates ;

unsigned int snd_pcm_rate_to_rate_bit(unsigned int rate)
{
 unsigned int i;

 for (i = 0; i < snd_pcm_known_rates.count; i++)
  if (snd_pcm_known_rates.list[i] == rate)
   return 1u << i;
 return SNDRV_PCM_RATE_KNOT;
}
