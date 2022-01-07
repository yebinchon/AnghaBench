
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;


 int HPI_AESEBUTX_FORMAT ;
 int hpi_control_param_set (int ,int ,int ,int ) ;

u16 hpi_aesebu_transmitter_set_format(u32 h_control, u16 output_format)
{
 return hpi_control_param_set(h_control, HPI_AESEBUTX_FORMAT,
  output_format, 0);
}
