
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
typedef scalar_t__ u16 ;


 int HPI_MICROPHONE_PHANTOM_POWER ;
 scalar_t__ hpi_control_param1_get (scalar_t__,int ,scalar_t__*) ;

u16 hpi_microphone_get_phantom_power(u32 h_control, u16 *pw_on_off)
{
 u16 error = 0;
 u32 on_off = 0;
 error = hpi_control_param1_get(h_control,
  HPI_MICROPHONE_PHANTOM_POWER, &on_off);
 if (pw_on_off)
  *pw_on_off = (u16)on_off;
 return error;
}
