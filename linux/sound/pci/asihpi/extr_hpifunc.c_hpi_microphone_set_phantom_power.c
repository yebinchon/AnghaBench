
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef scalar_t__ u16 ;


 int HPI_MICROPHONE_PHANTOM_POWER ;
 scalar_t__ hpi_control_param_set (int ,int ,int ,int ) ;

u16 hpi_microphone_set_phantom_power(u32 h_control, u16 on_off)
{
 return hpi_control_param_set(h_control, HPI_MICROPHONE_PHANTOM_POWER,
  (u32)on_off, 0);
}
