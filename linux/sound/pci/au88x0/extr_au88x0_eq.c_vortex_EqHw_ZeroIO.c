
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int mmio; } ;
typedef TYPE_1__ vortex_t ;


 scalar_t__ VORTEX_EQ_DEST ;
 scalar_t__ VORTEX_EQ_SOURCE ;
 int hwwrite (int ,scalar_t__,int) ;

__attribute__((used)) static void vortex_EqHw_ZeroIO(vortex_t * vortex)
{
 int i;
 for (i = 0; i < 0x8; i++)
  hwwrite(vortex->mmio, VORTEX_EQ_DEST + (i << 2), 0x0);
 for (i = 0; i < 0x4; i++)
  hwwrite(vortex->mmio, VORTEX_EQ_SOURCE + (i << 2), 0x0);
}
