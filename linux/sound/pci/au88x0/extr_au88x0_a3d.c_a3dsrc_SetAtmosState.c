
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


 int A3D_A_x1 ;
 int A3D_A_x2 ;
 int A3D_A_y1 ;
 int A3D_A_y2 ;
 int a3d_addrA (int ,int ,int ) ;
 int hwwrite (int ,int ,short) ;

__attribute__((used)) static void
a3dsrc_SetAtmosState(a3dsrc_t * a, short x1, short x2, short y1, short y2)
{
 vortex_t *vortex = (vortex_t *) (a->vortex);
 hwwrite(vortex->mmio, a3d_addrA(a->slice, a->source, A3D_A_x1), x1);
 hwwrite(vortex->mmio, a3d_addrA(a->slice, a->source, A3D_A_x2), x2);
 hwwrite(vortex->mmio, a3d_addrA(a->slice, a->source, A3D_A_y1), y1);
 hwwrite(vortex->mmio, a3d_addrA(a->slice, a->source, A3D_A_y2), y2);
}
