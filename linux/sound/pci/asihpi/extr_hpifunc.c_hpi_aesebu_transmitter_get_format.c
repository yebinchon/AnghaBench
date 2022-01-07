
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
typedef scalar_t__ u16 ;


 int HPI_AESEBUTX_FORMAT ;
 scalar_t__ hpi_control_param1_get (scalar_t__,int ,scalar_t__*) ;

u16 hpi_aesebu_transmitter_get_format(u32 h_control, u16 *pw_output_format)
{
 u16 err;
 u32 param;

 err = hpi_control_param1_get(h_control, HPI_AESEBUTX_FORMAT, &param);
 if (!err && pw_output_format)
  *pw_output_format = (u16)param;

 return err;
}
