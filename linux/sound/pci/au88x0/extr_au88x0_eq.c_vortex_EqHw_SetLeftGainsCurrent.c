
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


 int hwwrite (int ,int,int ) ;

__attribute__((used)) static void vortex_EqHw_SetLeftGainsCurrent(vortex_t * vortex, u16 a[])
{
 eqhw_t *eqhw = &(vortex->eq.this04);
 int ebx;

 for (ebx = 0; ebx < eqhw->this04; ebx++) {
  hwwrite(vortex->mmio, 0x2b028 + ebx * 0x30, a[ebx]);
 }
}
