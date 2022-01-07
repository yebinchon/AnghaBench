
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int owner; } ;
struct snd_emux {int used; TYPE_2__ ops; TYPE_1__* card; } ;
struct TYPE_3__ {int module; } ;


 int module_put (int ) ;
 int try_module_get (int ) ;

__attribute__((used)) static int
__snd_emux_inc_count(struct snd_emux *emu)
{
 emu->used++;
 if (!try_module_get(emu->ops.owner))
  goto __error;
 if (!try_module_get(emu->card->module)) {
  module_put(emu->ops.owner);
       __error:
  emu->used--;
  return 0;
 }
 return 1;
}
