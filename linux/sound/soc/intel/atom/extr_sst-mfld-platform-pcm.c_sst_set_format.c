
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_dai {int dev; int active; } ;


 int dev_err (int ,char*) ;
 int sst_fill_ssp_config (struct snd_soc_dai*,unsigned int) ;

__attribute__((used)) static int sst_set_format(struct snd_soc_dai *dai, unsigned int fmt)
{
 int ret = 0;

 if (!dai->active)
  return 0;

 ret = sst_fill_ssp_config(dai, fmt);
 if (ret < 0)
  dev_err(dai->dev, "sst_set_format failed..\n");

 return ret;
}
