
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct snd_ice1712 {unsigned int akm_codecs; TYPE_2__* akm; scalar_t__ cs8427; } ;
struct TYPE_3__ {int (* set_rate_val ) (TYPE_2__*,int ) ;} ;
struct TYPE_4__ {TYPE_1__ ops; } ;


 int snd_ice1712_cs8427_set_input_clock (struct snd_ice1712*,int) ;
 int stub1 (TYPE_2__*,int ) ;

__attribute__((used)) static void snd_ice1712_set_input_clock_source(struct snd_ice1712 *ice, int spdif_is_master)
{

 if (ice->cs8427)
  snd_ice1712_cs8427_set_input_clock(ice, spdif_is_master);

 if (spdif_is_master) {
  unsigned int i;
  for (i = 0; i < ice->akm_codecs; i++) {
   if (ice->akm[i].ops.set_rate_val)
    ice->akm[i].ops.set_rate_val(&ice->akm[i], 0);
  }
 }
}
