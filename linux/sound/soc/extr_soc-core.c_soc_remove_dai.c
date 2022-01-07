
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_soc_dai {scalar_t__ probed; int name; int dev; TYPE_1__* driver; } ;
struct TYPE_2__ {int remove_order; } ;


 int dev_err (int ,char*,int ,int) ;
 int snd_soc_dai_remove (struct snd_soc_dai*) ;

__attribute__((used)) static void soc_remove_dai(struct snd_soc_dai *dai, int order)
{
 int err;

 if (!dai || !dai->probed || !dai->driver ||
     dai->driver->remove_order != order)
  return;

 err = snd_soc_dai_remove(dai);
 if (err < 0)
  dev_err(dai->dev,
   "ASoC: failed to remove %s: %d\n",
   dai->name, err);

 dai->probed = 0;
}
