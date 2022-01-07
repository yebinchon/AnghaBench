
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_hwdep {TYPE_1__* card; } ;
struct file {int dummy; } ;
struct TYPE_2__ {int module; } ;


 int module_put (int ) ;

int
snd_wavefront_synth_release (struct snd_hwdep *hw, struct file *file)

{
 module_put(hw->card->module);
 return 0;
}
