
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_soc_dai {TYPE_1__* driver; } ;
struct TYPE_2__ {int (* remove ) (struct snd_soc_dai*) ;} ;


 int stub1 (struct snd_soc_dai*) ;

int snd_soc_dai_remove(struct snd_soc_dai *dai)
{
 if (dai->driver->remove)
  return dai->driver->remove(dai);
 return 0;
}
