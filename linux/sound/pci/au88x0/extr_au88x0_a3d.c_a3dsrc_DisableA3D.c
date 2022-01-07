
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int mmio; } ;
typedef TYPE_1__ vortex_t ;
struct TYPE_5__ {int slice; scalar_t__ vortex; } ;
typedef TYPE_2__ a3dsrc_t ;


 scalar_t__ A3D_SLICE_Control ;
 int hwwrite (int ,scalar_t__,int) ;

__attribute__((used)) static void a3dsrc_DisableA3D(a3dsrc_t * a)
{
 vortex_t *vortex = (vortex_t *) (a->vortex);
 hwwrite(vortex->mmio, A3D_SLICE_Control + ((a->slice) << 0xd),
  0xF0000000);
}
