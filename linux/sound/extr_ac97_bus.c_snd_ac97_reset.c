
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_ac97_bus_ops {int (* warm_reset ) (struct snd_ac97*) ;int (* reset ) (struct snd_ac97*) ;} ;
struct snd_ac97 {TYPE_1__* bus; } ;
struct TYPE_2__ {struct snd_ac97_bus_ops* ops; } ;


 int ENODEV ;
 scalar_t__ snd_ac97_check_id (struct snd_ac97*,unsigned int,unsigned int) ;
 int stub1 (struct snd_ac97*) ;
 int stub2 (struct snd_ac97*) ;
 int stub3 (struct snd_ac97*) ;

int snd_ac97_reset(struct snd_ac97 *ac97, bool try_warm, unsigned int id,
 unsigned int id_mask)
{
 struct snd_ac97_bus_ops *ops = ac97->bus->ops;

 if (try_warm && ops->warm_reset) {
  ops->warm_reset(ac97);
  if (snd_ac97_check_id(ac97, id, id_mask))
   return 1;
 }

 if (ops->reset)
  ops->reset(ac97);
 if (ops->warm_reset)
  ops->warm_reset(ac97);

 if (snd_ac97_check_id(ac97, id, id_mask))
  return 0;

 return -ENODEV;
}
