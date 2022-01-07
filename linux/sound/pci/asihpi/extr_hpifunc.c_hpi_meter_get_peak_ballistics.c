
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
typedef short u16 ;


 int HPI_METER_PEAK_BALLISTICS ;
 short hpi_control_param2_get (scalar_t__,int ,scalar_t__*,scalar_t__*) ;

u16 hpi_meter_get_peak_ballistics(u32 h_control, u16 *pn_attack,
 u16 *pn_decay)
{
 u32 attack;
 u32 decay;
 u16 error;

 error = hpi_control_param2_get(h_control, HPI_METER_PEAK_BALLISTICS,
  &attack, &decay);

 if (pn_attack)
  *pn_attack = (short)attack;
 if (pn_decay)
  *pn_decay = (short)decay;

 return error;
}
