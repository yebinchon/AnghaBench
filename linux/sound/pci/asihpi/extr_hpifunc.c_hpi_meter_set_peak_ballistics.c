
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;


 int HPI_METER_PEAK_BALLISTICS ;
 int hpi_control_param_set (int ,int ,int ,int ) ;

u16 hpi_meter_set_peak_ballistics(u32 h_control, u16 attack, u16 decay)
{
 return hpi_control_param_set(h_control, HPI_METER_PEAK_BALLISTICS,
  attack, decay);
}
