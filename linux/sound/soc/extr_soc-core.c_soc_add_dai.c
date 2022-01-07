
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_dai_driver {scalar_t__ id; int * ops; int * name; } ;
struct snd_soc_dai {scalar_t__ id; int * name; int list; struct snd_soc_dai_driver* driver; struct device* dev; struct snd_soc_component* component; } ;
struct snd_soc_component {scalar_t__ num_dai; int dai_list; struct device* dev; } ;
struct device {int dummy; } ;


 int GFP_KERNEL ;
 int dev_dbg (struct device*,char*,int *) ;
 int * dev_name (struct device*) ;
 int * fmt_multiple_name (struct device*,struct snd_soc_dai_driver*) ;
 int * fmt_single_name (struct device*,scalar_t__*) ;
 int kfree (struct snd_soc_dai*) ;
 struct snd_soc_dai* kzalloc (int,int ) ;
 int list_add_tail (int *,int *) ;
 int null_dai_ops ;

__attribute__((used)) static struct snd_soc_dai *soc_add_dai(struct snd_soc_component *component,
 struct snd_soc_dai_driver *dai_drv,
 bool legacy_dai_naming)
{
 struct device *dev = component->dev;
 struct snd_soc_dai *dai;

 dev_dbg(dev, "ASoC: dynamically register DAI %s\n", dev_name(dev));

 dai = kzalloc(sizeof(struct snd_soc_dai), GFP_KERNEL);
 if (dai == ((void*)0))
  return ((void*)0);
 if (legacy_dai_naming &&
     (dai_drv->id == 0 || dai_drv->name == ((void*)0))) {
  dai->name = fmt_single_name(dev, &dai->id);
 } else {
  dai->name = fmt_multiple_name(dev, dai_drv);
  if (dai_drv->id)
   dai->id = dai_drv->id;
  else
   dai->id = component->num_dai;
 }
 if (dai->name == ((void*)0)) {
  kfree(dai);
  return ((void*)0);
 }

 dai->component = component;
 dai->dev = dev;
 dai->driver = dai_drv;
 if (!dai->driver->ops)
  dai->driver->ops = &null_dai_ops;


 list_add_tail(&dai->list, &component->dai_list);
 component->num_dai++;

 dev_dbg(dev, "ASoC: Registered DAI '%s'\n", dai->name);
 return dai;
}
