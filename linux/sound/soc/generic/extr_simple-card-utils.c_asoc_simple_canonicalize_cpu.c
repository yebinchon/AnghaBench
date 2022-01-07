
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_soc_dai_link {TYPE_1__* cpus; } ;
struct TYPE_2__ {int * dai_name; } ;



void asoc_simple_canonicalize_cpu(struct snd_soc_dai_link *dai_link,
      int is_single_links)
{
 if (is_single_links)
  dai_link->cpus->dai_name = ((void*)0);
}
