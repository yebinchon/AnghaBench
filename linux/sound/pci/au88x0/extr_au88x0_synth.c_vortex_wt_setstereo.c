
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int mmio; } ;
typedef TYPE_1__ vortex_t ;
typedef int u32 ;


 int WT_STEREO (int) ;
 int hwread (int ,int ) ;
 int hwwrite (int ,int ,int) ;

__attribute__((used)) static void vortex_wt_setstereo(vortex_t * vortex, u32 wt, u32 stereo)
{
 int temp;


 temp = hwread(vortex->mmio, WT_STEREO(wt));
 temp = (temp & 0xfe) | (stereo & 1);

 hwwrite(vortex->mmio, WT_STEREO(wt), temp);
}
