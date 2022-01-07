
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_soc_dai {int probed; int name; int dev; TYPE_1__* driver; } ;
struct TYPE_2__ {int probe_order; } ;


 int dev_err (int ,char*,int ,int) ;
 int snd_soc_dai_probe (struct snd_soc_dai*) ;

__attribute__((used)) static int soc_probe_dai(struct snd_soc_dai *dai, int order)
{
 int ret;

 if (dai->probed ||
     dai->driver->probe_order != order)
  return 0;

 ret = snd_soc_dai_probe(dai);
 if (ret < 0) {
  dev_err(dai->dev, "ASoC: failed to probe DAI %s: %d\n",
   dai->name, ret);
  return ret;
 }

 dai->probed = 1;

 return 0;
}
