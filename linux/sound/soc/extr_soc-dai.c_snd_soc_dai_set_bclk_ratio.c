
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct snd_soc_dai {TYPE_2__* driver; } ;
struct TYPE_4__ {TYPE_1__* ops; } ;
struct TYPE_3__ {int (* set_bclk_ratio ) (struct snd_soc_dai*,unsigned int) ;} ;


 int EINVAL ;
 int stub1 (struct snd_soc_dai*,unsigned int) ;

int snd_soc_dai_set_bclk_ratio(struct snd_soc_dai *dai, unsigned int ratio)
{
 if (dai->driver->ops->set_bclk_ratio)
  return dai->driver->ops->set_bclk_ratio(dai, ratio);
 else
  return -EINVAL;
}
