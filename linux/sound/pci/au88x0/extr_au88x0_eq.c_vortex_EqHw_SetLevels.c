
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


 int VORTEX_BAND_COEFF_SIZE ;
 int hwwrite (int ,int,int ) ;

__attribute__((used)) static void vortex_EqHw_SetLevels(vortex_t * vortex, u16 peaks[])
{
 eqhw_t *eqhw = &(vortex->eq.this04);
 int i;


 for (i = 0; i < eqhw->this04; i++) {
  hwwrite(vortex->mmio, 0x2b024 + i * VORTEX_BAND_COEFF_SIZE, peaks[i]);
 }

 hwwrite(vortex->mmio, 0x2b3cc, peaks[eqhw->this04]);
 hwwrite(vortex->mmio, 0x2b3d8, peaks[eqhw->this04 + 1]);


 for (i = 0; i < eqhw->this04; i++) {
  hwwrite(vortex->mmio, 0x2b204 + i * VORTEX_BAND_COEFF_SIZE,
   peaks[i + (eqhw->this04 + 2)]);
 }

 hwwrite(vortex->mmio, 0x2b3e4, peaks[2 + (eqhw->this04 * 2)]);
 hwwrite(vortex->mmio, 0x2b3f0, peaks[3 + (eqhw->this04 * 2)]);
}
