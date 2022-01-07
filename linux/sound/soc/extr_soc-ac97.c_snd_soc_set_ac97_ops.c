
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_ac97_bus_ops {int dummy; } ;
struct TYPE_2__ {struct snd_ac97_bus_ops* ops; } ;


 int EBUSY ;
 TYPE_1__ soc_ac97_bus ;
 struct snd_ac97_bus_ops* soc_ac97_ops ;

int snd_soc_set_ac97_ops(struct snd_ac97_bus_ops *ops)
{
 if (ops == soc_ac97_ops)
  return 0;

 if (soc_ac97_ops && ops)
  return -EBUSY;

 soc_ac97_ops = ops;
 soc_ac97_bus.ops = ops;

 return 0;
}
