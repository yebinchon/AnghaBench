
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int* xtalk_dline_t ;
struct TYPE_3__ {int mmio; } ;
typedef TYPE_1__ vortex_t ;


 int hwwrite (int ,int,int) ;

__attribute__((used)) static void
vortex_XtalkHw_SetLeftDline(vortex_t * vortex, xtalk_dline_t const dline)
{
 int i;

 for (i = 0; i < 0x20; i++) {
  hwwrite(vortex->mmio, 0x24000 + (i << 2), dline[i] & 0xffff);
  hwwrite(vortex->mmio, 0x24080 + (i << 2), dline[i] >> 0x10);
 }
}
