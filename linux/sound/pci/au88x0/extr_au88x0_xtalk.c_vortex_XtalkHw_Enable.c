
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int mmio; } ;
typedef TYPE_1__ vortex_t ;
typedef int u32 ;


 int hwread (int ,int) ;
 int hwwrite (int ,int,int) ;

__attribute__((used)) static void vortex_XtalkHw_Enable(vortex_t * vortex)
{
 u32 temp;

 temp = (hwread(vortex->mmio, 0x24660) & 0x1FFFFFFF) | 0xC0000000;
 temp |= 1;
 hwwrite(vortex->mmio, 0x24660, temp);

}
