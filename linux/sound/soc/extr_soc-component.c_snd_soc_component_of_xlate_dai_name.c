
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_soc_component {TYPE_1__* driver; } ;
struct of_phandle_args {int dummy; } ;
struct TYPE_2__ {int (* of_xlate_dai_name ) (struct snd_soc_component*,struct of_phandle_args*,char const**) ;} ;


 int ENOTSUPP ;
 int stub1 (struct snd_soc_component*,struct of_phandle_args*,char const**) ;

int snd_soc_component_of_xlate_dai_name(struct snd_soc_component *component,
     struct of_phandle_args *args,
     const char **dai_name)
{
 if (component->driver->of_xlate_dai_name)
  return component->driver->of_xlate_dai_name(component,
           args, dai_name);
 return -ENOTSUPP;
}
