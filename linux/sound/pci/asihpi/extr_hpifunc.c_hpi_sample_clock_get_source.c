
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
typedef scalar_t__ u16 ;


 int HPI_SAMPLECLOCK_SOURCE ;
 scalar_t__ hpi_control_param1_get (scalar_t__,int ,scalar_t__*) ;

u16 hpi_sample_clock_get_source(u32 h_control, u16 *pw_source)
{
 u16 err = 0;
 u32 source = 0;
 err = hpi_control_param1_get(h_control, HPI_SAMPLECLOCK_SOURCE,
  &source);
 if (!err)
  if (pw_source)
   *pw_source = (u16)source;
 return err;
}
