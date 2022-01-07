
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


 int A3D_A_CoeffTrackTC ;
 int A3D_A_GainTrackTC ;
 int A3D_A_HrtfTrackTC ;
 int A3D_A_ITDTrackTC ;
 int a3d_addrA (int ,int ,int ) ;
 int hwwrite (int ,int ,short) ;

__attribute__((used)) static void
a3dsrc_SetTimeConsts(a3dsrc_t * a, short HrtfTrack, short ItdTrack,
       short GTrack, short CTrack)
{
 vortex_t *vortex = (vortex_t *) (a->vortex);
 hwwrite(vortex->mmio,
  a3d_addrA(a->slice, a->source, A3D_A_HrtfTrackTC), HrtfTrack);
 hwwrite(vortex->mmio,
  a3d_addrA(a->slice, a->source, A3D_A_ITDTrackTC), ItdTrack);
 hwwrite(vortex->mmio,
  a3d_addrA(a->slice, a->source, A3D_A_GainTrackTC), GTrack);
 hwwrite(vortex->mmio,
  a3d_addrA(a->slice, a->source, A3D_A_CoeffTrackTC), CTrack);
}
