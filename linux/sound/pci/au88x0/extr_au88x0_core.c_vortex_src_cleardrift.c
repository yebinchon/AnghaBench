
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int mmio; } ;
typedef TYPE_1__ vortex_t ;


 scalar_t__ VORTEX_SRC_DRIFT0 ;
 scalar_t__ VORTEX_SRC_DRIFT1 ;
 scalar_t__ VORTEX_SRC_DRIFT2 ;
 int hwwrite (int ,scalar_t__,int) ;

__attribute__((used)) static void vortex_src_cleardrift(vortex_t * vortex, unsigned char src)
{
 hwwrite(vortex->mmio, VORTEX_SRC_DRIFT0 + (src << 2), 0);
 hwwrite(vortex->mmio, VORTEX_SRC_DRIFT1 + (src << 2), 0);
 hwwrite(vortex->mmio, VORTEX_SRC_DRIFT2 + (src << 2), 1);
}
