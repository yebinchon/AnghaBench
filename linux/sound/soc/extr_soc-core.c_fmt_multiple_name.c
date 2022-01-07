
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_dai_driver {int * name; } ;
struct device {int dummy; } ;


 int GFP_KERNEL ;
 int dev_err (struct device*,char*,int ) ;
 int dev_name (struct device*) ;
 char* kstrdup (int *,int ) ;

__attribute__((used)) static inline char *fmt_multiple_name(struct device *dev,
  struct snd_soc_dai_driver *dai_drv)
{
 if (dai_drv->name == ((void*)0)) {
  dev_err(dev,
   "ASoC: error - multiple DAI %s registered with no name\n",
   dev_name(dev));
  return ((void*)0);
 }

 return kstrdup(dai_drv->name, GFP_KERNEL);
}
