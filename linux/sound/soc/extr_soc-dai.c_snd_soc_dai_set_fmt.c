
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct snd_soc_dai {TYPE_2__* driver; } ;
struct TYPE_4__ {TYPE_1__* ops; } ;
struct TYPE_3__ {int (* set_fmt ) (struct snd_soc_dai*,unsigned int) ;} ;


 int ENOTSUPP ;
 int stub1 (struct snd_soc_dai*,unsigned int) ;

int snd_soc_dai_set_fmt(struct snd_soc_dai *dai, unsigned int fmt)
{
 if (dai->driver->ops->set_fmt == ((void*)0))
  return -ENOTSUPP;
 return dai->driver->ops->set_fmt(dai, fmt);
}
