
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_gus_card {TYPE_1__* card; } ;
struct TYPE_2__ {int module; } ;


 int try_module_get (int ) ;

int snd_gus_use_inc(struct snd_gus_card * gus)
{
 if (!try_module_get(gus->card->module))
  return 0;
 return 1;
}
