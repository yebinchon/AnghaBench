
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct snd_soc_dai {TYPE_2__* driver; } ;
struct TYPE_4__ {TYPE_1__* ops; } ;
struct TYPE_3__ {int (* set_clkdiv ) (struct snd_soc_dai*,int,int) ;} ;


 int EINVAL ;
 int stub1 (struct snd_soc_dai*,int,int) ;

int snd_soc_dai_set_clkdiv(struct snd_soc_dai *dai,
      int div_id, int div)
{
 if (dai->driver->ops->set_clkdiv)
  return dai->driver->ops->set_clkdiv(dai, div_id, div);
 else
  return -EINVAL;
}
