
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_soc_component {TYPE_1__* driver; } ;
struct TYPE_2__ {int (* set_sysclk ) (struct snd_soc_component*,int,int,unsigned int,int) ;} ;


 int ENOTSUPP ;
 int stub1 (struct snd_soc_component*,int,int,unsigned int,int) ;

int snd_soc_component_set_sysclk(struct snd_soc_component *component,
     int clk_id, int source, unsigned int freq,
     int dir)
{
 if (component->driver->set_sysclk)
  return component->driver->set_sysclk(component, clk_id, source,
           freq, dir);

 return -ENOTSUPP;
}
