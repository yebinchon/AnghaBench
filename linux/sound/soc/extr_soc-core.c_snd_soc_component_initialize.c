
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_component_driver {int dummy; } ;
struct snd_soc_component {struct snd_soc_component_driver const* driver; struct device* dev; int name; int id; int io_mutex; int card_list; int dobj_list; int dai_list; } ;
struct device {int dummy; } ;


 int ENOMEM ;
 int INIT_LIST_HEAD (int *) ;
 int dev_err (struct device*,char*) ;
 int fmt_single_name (struct device*,int *) ;
 int mutex_init (int *) ;

__attribute__((used)) static int snd_soc_component_initialize(struct snd_soc_component *component,
 const struct snd_soc_component_driver *driver, struct device *dev)
{
 INIT_LIST_HEAD(&component->dai_list);
 INIT_LIST_HEAD(&component->dobj_list);
 INIT_LIST_HEAD(&component->card_list);
 mutex_init(&component->io_mutex);

 component->name = fmt_single_name(dev, &component->id);
 if (!component->name) {
  dev_err(dev, "ASoC: Failed to allocate name\n");
  return -ENOMEM;
 }

 component->dev = dev;
 component->driver = driver;

 return 0;
}
