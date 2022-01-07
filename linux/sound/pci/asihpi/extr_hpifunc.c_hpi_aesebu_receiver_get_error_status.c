
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
typedef scalar_t__ u16 ;


 int HPI_AESEBURX_ERRORSTATUS ;
 scalar_t__ hpi_control_param1_get (scalar_t__,int ,scalar_t__*) ;

u16 hpi_aesebu_receiver_get_error_status(u32 h_control, u16 *pw_error_data)
{
 u32 error_data = 0;
 u16 err = 0;

 err = hpi_control_param1_get(h_control, HPI_AESEBURX_ERRORSTATUS,
  &error_data);
 if (pw_error_data)
  *pw_error_data = (u16)error_data;
 return err;
}
