
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int * xtalk_gains_t ;
struct TYPE_3__ {int mmio; } ;
typedef TYPE_1__ vortex_t ;


 int XTGAINS_SZ ;
 int hwwrite (int ,int,int ) ;

__attribute__((used)) static void
vortex_XtalkHw_SetGains(vortex_t * vortex, xtalk_gains_t const gains)
{
 int i;

 for (i = 0; i < XTGAINS_SZ; i++) {
  hwwrite(vortex->mmio, 0x244D0 + (i * 4), gains[i]);
 }
}
