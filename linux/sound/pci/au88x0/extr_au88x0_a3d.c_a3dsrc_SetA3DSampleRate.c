
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

__attribute__((used)) static void a3dsrc_SetA3DSampleRate(a3dsrc_t * a, int sr)
{
 vortex_t *vortex = (vortex_t *) (a->vortex);
 int esp0 = 0;

 esp0 = (((esp0 & 0x7fffffff) | 0xB8000000) & 0x7) | ((sr & 0x1f) << 3);
 hwwrite(vortex->mmio, A3D_SLICE_Control + ((a->slice) << 0xd), esp0);

}
