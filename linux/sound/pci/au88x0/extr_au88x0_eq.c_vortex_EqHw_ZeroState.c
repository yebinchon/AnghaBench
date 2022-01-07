
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_1__ ;


struct TYPE_17__ {int mmio; } ;
typedef TYPE_1__ vortex_t ;
typedef int u16 ;


 int asEqCoefsZeros ;
 int asEqOutStateZeros ;
 int eq_gains_zero ;
 scalar_t__ eq_levels ;
 int eq_states_zero ;
 int hwwrite (int ,int,int ) ;
 int vortex_EqHw_SetA3DBypassGain (TYPE_1__*,int ,int ) ;
 int vortex_EqHw_SetBypassGain (TYPE_1__*,int ,int ) ;
 int vortex_EqHw_SetControlReg (TYPE_1__*,int ) ;
 int vortex_EqHw_SetLeftCoefs (TYPE_1__*,int ) ;
 int vortex_EqHw_SetLeftGainsCurrent (TYPE_1__*,int ) ;
 int vortex_EqHw_SetLeftGainsTarget (TYPE_1__*,int ) ;
 int vortex_EqHw_SetLeftStates (TYPE_1__*,int ,int ) ;
 int vortex_EqHw_SetLevels (TYPE_1__*,int *) ;
 int vortex_EqHw_SetRightCoefs (TYPE_1__*,int ) ;
 int vortex_EqHw_SetRightGainsCurrent (TYPE_1__*,int ) ;
 int vortex_EqHw_SetRightGainsTarget (TYPE_1__*,int ) ;
 int vortex_EqHw_SetRightStates (TYPE_1__*,int ,int ) ;
 int vortex_EqHw_SetTimeConsts (TYPE_1__*,int ,int ) ;
 int vortex_EqHw_ZeroIO (TYPE_1__*) ;

__attribute__((used)) static void vortex_EqHw_ZeroState(vortex_t * vortex)
{

 vortex_EqHw_SetControlReg(vortex, 0);
 vortex_EqHw_ZeroIO(vortex);
 hwwrite(vortex->mmio, 0x2b3c0, 0);

 vortex_EqHw_SetTimeConsts(vortex, 0, 0);

 vortex_EqHw_SetLeftCoefs(vortex, asEqCoefsZeros);
 vortex_EqHw_SetRightCoefs(vortex, asEqCoefsZeros);

 vortex_EqHw_SetLeftGainsCurrent(vortex, eq_gains_zero);
 vortex_EqHw_SetRightGainsCurrent(vortex, eq_gains_zero);
 vortex_EqHw_SetLeftGainsTarget(vortex, eq_gains_zero);
 vortex_EqHw_SetRightGainsTarget(vortex, eq_gains_zero);

 vortex_EqHw_SetBypassGain(vortex, 0, 0);

 vortex_EqHw_SetA3DBypassGain(vortex, 0, 0);

 vortex_EqHw_SetLeftStates(vortex, eq_states_zero, asEqOutStateZeros);
 vortex_EqHw_SetRightStates(vortex, eq_states_zero, asEqOutStateZeros);
 vortex_EqHw_SetLevels(vortex, (u16 *) eq_levels);
}
