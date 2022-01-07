
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_dai_driver {int dummy; } ;
struct snd_soc_component_driver {int dummy; } ;
struct device {int dummy; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int devm_component_release ;
 int devres_add (struct device*,struct device**) ;
 struct device** devres_alloc (int ,int,int ) ;
 int devres_free (struct device**) ;
 int snd_soc_register_component (struct device*,struct snd_soc_component_driver const*,struct snd_soc_dai_driver*,int) ;

int devm_snd_soc_register_component(struct device *dev,
    const struct snd_soc_component_driver *cmpnt_drv,
    struct snd_soc_dai_driver *dai_drv, int num_dai)
{
 struct device **ptr;
 int ret;

 ptr = devres_alloc(devm_component_release, sizeof(*ptr), GFP_KERNEL);
 if (!ptr)
  return -ENOMEM;

 ret = snd_soc_register_component(dev, cmpnt_drv, dai_drv, num_dai);
 if (ret == 0) {
  *ptr = dev;
  devres_add(dev, ptr);
 } else {
  devres_free(ptr);
 }

 return ret;
}
