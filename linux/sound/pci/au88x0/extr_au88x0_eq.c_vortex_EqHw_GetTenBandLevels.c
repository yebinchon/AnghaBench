
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {int this04; } ;
struct TYPE_5__ {TYPE_3__ this04; } ;
struct TYPE_6__ {int mmio; TYPE_1__ eq; } ;
typedef TYPE_2__ vortex_t ;
typedef int u16 ;
typedef TYPE_3__ eqhw_t ;


 int hwread (int ,int) ;

__attribute__((used)) static void vortex_EqHw_GetTenBandLevels(vortex_t * vortex, u16 peaks[])
{
 eqhw_t *eqhw = &(vortex->eq.this04);
 int i;

 if (eqhw->this04 <= 0)
  return;

 for (i = 0; i < eqhw->this04; i++)
  peaks[i] = hwread(vortex->mmio, 0x2B024 + i * 0x30);
 for (i = 0; i < eqhw->this04; i++)
  peaks[i + eqhw->this04] =
      hwread(vortex->mmio, 0x2B204 + i * 0x30);
}
