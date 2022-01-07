
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_soc_component {TYPE_1__* driver; } ;
typedef enum snd_soc_bias_level { ____Placeholder_snd_soc_bias_level } snd_soc_bias_level ;
struct TYPE_2__ {int (* set_bias_level ) (struct snd_soc_component*,int) ;} ;


 int stub1 (struct snd_soc_component*,int) ;

int snd_soc_component_set_bias_level(struct snd_soc_component *component,
         enum snd_soc_bias_level level)
{
 if (component->driver->set_bias_level)
  return component->driver->set_bias_level(component, level);

 return 0;
}
