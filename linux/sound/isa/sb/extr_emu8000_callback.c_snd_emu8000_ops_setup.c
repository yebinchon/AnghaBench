
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_emu8000 {TYPE_1__* emu; } ;
struct TYPE_2__ {int ops; } ;


 int emu8000_ops ;

void
snd_emu8000_ops_setup(struct snd_emu8000 *hw)
{
 hw->emu->ops = emu8000_ops;
}
