
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
typedef scalar_t__ u16 ;


 int HPI_SAMPLECLOCK_SOURCE_INDEX ;
 scalar_t__ hpi_control_param1_get (scalar_t__,int ,scalar_t__*) ;

u16 hpi_sample_clock_get_source_index(u32 h_control, u16 *pw_source_index)
{
 u16 err = 0;
 u32 source_index = 0;
 err = hpi_control_param1_get(h_control, HPI_SAMPLECLOCK_SOURCE_INDEX,
  &source_index);
 if (!err)
  if (pw_source_index)
   *pw_source_index = (u16)source_index;
 return err;
}
