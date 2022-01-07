
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct snd_soc_dai {TYPE_2__* driver; } ;
struct TYPE_4__ {TYPE_1__* ops; } ;
struct TYPE_3__ {int (* set_tristate ) (struct snd_soc_dai*,int) ;} ;


 int EINVAL ;
 int stub1 (struct snd_soc_dai*,int) ;

int snd_soc_dai_set_tristate(struct snd_soc_dai *dai, int tristate)
{
 if (dai->driver->ops->set_tristate)
  return dai->driver->ops->set_tristate(dai, tristate);
 else
  return -EINVAL;
}
