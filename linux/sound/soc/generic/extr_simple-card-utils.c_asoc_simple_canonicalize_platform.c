
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct snd_soc_dai_link {scalar_t__ num_platforms; TYPE_2__* platforms; TYPE_1__* cpus; } ;
struct TYPE_4__ {scalar_t__ of_node; } ;
struct TYPE_3__ {scalar_t__ of_node; } ;



void asoc_simple_canonicalize_platform(struct snd_soc_dai_link *dai_link)
{

 if (!dai_link->platforms->of_node)
  dai_link->platforms->of_node = dai_link->cpus->of_node;





 if (!dai_link->platforms->of_node)
  dai_link->num_platforms = 0;
}
