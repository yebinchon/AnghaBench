
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;


 int HPI_EQUALIZER_NUM_FILTERS ;
 int hpi_control_param_set (int ,int ,int ,int ) ;

u16 hpi_parametric_eq_set_state(u32 h_control, u16 on_off)
{
 return hpi_control_param_set(h_control, HPI_EQUALIZER_NUM_FILTERS,
  on_off, 0);
}
