
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int vortex_t ;
struct TYPE_3__ {int RightGains; int LeftGains; int RightCoefs; int LeftCoefs; } ;
typedef TYPE_1__ auxxEqCoeffSet_t ;


 int vortex_EqHw_SetLeftCoefs (int *,int ) ;
 int vortex_EqHw_SetLeftGainsCurrent (int *,int ) ;
 int vortex_EqHw_SetLeftGainsTarget (int *,int ) ;
 int vortex_EqHw_SetRightCoefs (int *,int ) ;
 int vortex_EqHw_SetRightGainsCurrent (int *,int ) ;
 int vortex_EqHw_SetRightGainsTarget (int *,int ) ;
 int vortex_EqHw_SetTimeConsts (int *,int,int) ;

__attribute__((used)) static void
vortex_EqHw_Program10Band(vortex_t * vortex, auxxEqCoeffSet_t * coefset)
{

 vortex_EqHw_SetTimeConsts(vortex, 0xc, 0x7fe0);

 vortex_EqHw_SetLeftCoefs(vortex, coefset->LeftCoefs);
 vortex_EqHw_SetRightCoefs(vortex, coefset->RightCoefs);

 vortex_EqHw_SetLeftGainsCurrent(vortex, coefset->LeftGains);

 vortex_EqHw_SetRightGainsTarget(vortex, coefset->RightGains);
 vortex_EqHw_SetLeftGainsTarget(vortex, coefset->LeftGains);

 vortex_EqHw_SetRightGainsCurrent(vortex, coefset->RightGains);
}
