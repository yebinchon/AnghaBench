
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int mmio; } ;
typedef TYPE_1__ vortex_t ;


 scalar_t__ VORTEX_SRC_DATA ;
 scalar_t__ VORTEX_SRC_DATA0 ;
 int hwwrite (int ,scalar_t__,int ) ;

__attribute__((used)) static void vortex_src_flushbuffers(vortex_t * vortex, unsigned char src)
{
 int i;

 for (i = 0x1f; i >= 0; i--)
  hwwrite(vortex->mmio,
   VORTEX_SRC_DATA0 + (src << 7) + (i << 2), 0);
 hwwrite(vortex->mmio, VORTEX_SRC_DATA + (src << 3), 0);
 hwwrite(vortex->mmio, VORTEX_SRC_DATA + (src << 3) + 4, 0);
}
