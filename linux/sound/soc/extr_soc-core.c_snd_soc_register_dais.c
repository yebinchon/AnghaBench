
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_soc_dai_driver {int dummy; } ;
struct snd_soc_dai {int dummy; } ;
struct snd_soc_component {TYPE_1__* driver; struct device* dev; } ;
struct device {int dummy; } ;
struct TYPE_2__ {int non_legacy_dai_naming; } ;


 int ENOMEM ;
 int dev_dbg (struct device*,char*,int ,size_t) ;
 int dev_name (struct device*) ;
 int snd_soc_unregister_dais (struct snd_soc_component*) ;
 struct snd_soc_dai* soc_add_dai (struct snd_soc_component*,struct snd_soc_dai_driver*,int) ;

__attribute__((used)) static int snd_soc_register_dais(struct snd_soc_component *component,
     struct snd_soc_dai_driver *dai_drv,
     size_t count)
{
 struct device *dev = component->dev;
 struct snd_soc_dai *dai;
 unsigned int i;
 int ret;

 dev_dbg(dev, "ASoC: dai register %s #%zu\n", dev_name(dev), count);

 for (i = 0; i < count; i++) {

  dai = soc_add_dai(component, dai_drv + i, count == 1 &&
      !component->driver->non_legacy_dai_naming);
  if (dai == ((void*)0)) {
   ret = -ENOMEM;
   goto err;
  }
 }

 return 0;

err:
 snd_soc_unregister_dais(component);

 return ret;
}
