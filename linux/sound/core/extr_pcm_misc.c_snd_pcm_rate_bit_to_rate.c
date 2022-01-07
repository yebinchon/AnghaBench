
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {unsigned int count; unsigned int* list; } ;


 TYPE_1__ snd_pcm_known_rates ;

unsigned int snd_pcm_rate_bit_to_rate(unsigned int rate_bit)
{
 unsigned int i;

 for (i = 0; i < snd_pcm_known_rates.count; i++)
  if ((1u << i) == rate_bit)
   return snd_pcm_known_rates.list[i];
 return 0;
}
