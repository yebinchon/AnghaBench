
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;


 int HPI_AESEBUTX_USERDATA ;
 int hpi_control_param_set (int ,int ,int ,int ) ;

u16 hpi_aesebu_transmitter_set_user_data(u32 h_control, u16 index, u16 data)
{
 return hpi_control_param_set(h_control, HPI_AESEBUTX_USERDATA, index,
  data);
}
