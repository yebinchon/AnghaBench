
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_opl3 {TYPE_1__* card; } ;
struct TYPE_2__ {int module; } ;


 int module_put (int ) ;

void snd_opl3_synth_use_dec(struct snd_opl3 * opl3)
{
 module_put(opl3->card->module);
}
