
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
typedef scalar_t__ u16 ;


 int HPI_CHANNEL_MODE_MODE ;
 scalar_t__ hpi_control_param1_get (scalar_t__,int ,scalar_t__*) ;

u16 hpi_channel_mode_get(u32 h_control, u16 *mode)
{
 u32 mode32 = 0;
 u16 err = hpi_control_param1_get(h_control,
  HPI_CHANNEL_MODE_MODE, &mode32);
 if (mode)
  *mode = (u16)mode32;
 return err;
}
