
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int mmio; } ;
typedef TYPE_1__ vortex_t ;
struct TYPE_5__ {int source; int slice; scalar_t__ vortex; } ;
typedef TYPE_2__ a3dsrc_t ;


 int A3D_B_A12Current ;
 int A3D_B_B01Current ;
 int A3D_B_B2Current ;
 int a3d_addrB (int ,int ,int ) ;
 int hwwrite (int ,int ,short) ;

__attribute__((used)) static void
a3dsrc_SetAtmosCurrent(a3dsrc_t * a, short aa, short b, short c, short d,
         short e)
{
 vortex_t *vortex = (vortex_t *) (a->vortex);
 hwwrite(vortex->mmio,
  a3d_addrB(a->slice, a->source, A3D_B_A12Current),
  (e << 0x10) | d);
 hwwrite(vortex->mmio,
  a3d_addrB(a->slice, a->source, A3D_B_B01Current),
  (b << 0x10) | aa);
 hwwrite(vortex->mmio,
  a3d_addrB(a->slice, a->source, A3D_B_B2Current), c);
}
