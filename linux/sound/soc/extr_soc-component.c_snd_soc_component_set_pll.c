
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_soc_component {TYPE_1__* driver; } ;
struct TYPE_2__ {int (* set_pll ) (struct snd_soc_component*,int,int,unsigned int,unsigned int) ;} ;


 int EINVAL ;
 int stub1 (struct snd_soc_component*,int,int,unsigned int,unsigned int) ;

int snd_soc_component_set_pll(struct snd_soc_component *component, int pll_id,
         int source, unsigned int freq_in,
         unsigned int freq_out)
{
 if (component->driver->set_pll)
  return component->driver->set_pll(component, pll_id, source,
        freq_in, freq_out);

 return -EINVAL;
}
