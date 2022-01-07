
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef scalar_t__ u16 ;


 int HPI_SAMPLECLOCK_LOCAL_SAMPLERATE ;
 scalar_t__ hpi_control_param1_get (int ,int ,int *) ;

u16 hpi_sample_clock_get_local_rate(u32 h_control, u32 *psample_rate)
{
 u16 err = 0;
 u32 sample_rate = 0;
 err = hpi_control_param1_get(h_control,
  HPI_SAMPLECLOCK_LOCAL_SAMPLERATE, &sample_rate);
 if (!err)
  if (psample_rate)
   *psample_rate = sample_rate;
 return err;
}
