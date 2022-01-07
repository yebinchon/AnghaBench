
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int mmio; } ;
typedef TYPE_1__ vortex_t ;


 int hwwrite (int ,int,int ) ;

__attribute__((used)) static void vortex_XtalkHw_ZeroIO(vortex_t * vortex)
{
 int i;

 for (i = 0; i < 20; i++)
  hwwrite(vortex->mmio, 0x24600 + (i << 2), 0);
 for (i = 0; i < 4; i++)
  hwwrite(vortex->mmio, 0x24650 + (i << 2), 0);
}
