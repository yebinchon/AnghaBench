
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int owner; } ;
struct snd_emux {scalar_t__ used; TYPE_2__ ops; TYPE_1__* card; } ;
struct TYPE_3__ {int module; } ;


 int module_put (int ) ;
 int snd_emux_terminate_all (struct snd_emux*) ;

__attribute__((used)) static void
__snd_emux_dec_count(struct snd_emux *emu)
{
 module_put(emu->card->module);
 emu->used--;
 if (emu->used <= 0)
  snd_emux_terminate_all(emu);
 module_put(emu->ops.owner);
}
