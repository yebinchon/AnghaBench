
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int (* sample_reset ) (struct snd_emux*) ;} ;
struct snd_emux {TYPE_1__ ops; } ;


 int stub1 (struct snd_emux*) ;

__attribute__((used)) static void sf_sample_reset(void *private_data)
{
 struct snd_emux *emu = private_data;
 emu->ops.sample_reset(emu);
}
