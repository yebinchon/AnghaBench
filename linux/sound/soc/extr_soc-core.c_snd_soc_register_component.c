
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_dai_driver {int dummy; } ;
struct snd_soc_component_driver {int dummy; } ;
struct snd_soc_component {int dummy; } ;
struct device {int dummy; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 struct snd_soc_component* devm_kzalloc (struct device*,int,int ) ;
 int snd_soc_add_component (struct device*,struct snd_soc_component*,struct snd_soc_component_driver const*,struct snd_soc_dai_driver*,int) ;

int snd_soc_register_component(struct device *dev,
   const struct snd_soc_component_driver *component_driver,
   struct snd_soc_dai_driver *dai_drv,
   int num_dai)
{
 struct snd_soc_component *component;

 component = devm_kzalloc(dev, sizeof(*component), GFP_KERNEL);
 if (!component)
  return -ENOMEM;

 return snd_soc_add_component(dev, component, component_driver,
         dai_drv, num_dai);
}
