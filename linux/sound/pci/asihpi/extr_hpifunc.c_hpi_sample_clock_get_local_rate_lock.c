
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;


 int HPI_SAMPLECLOCK_LOCAL_LOCK ;
 int hpi_control_param1_get (int ,int ,int *) ;

u16 hpi_sample_clock_get_local_rate_lock(u32 h_control, u32 *plock)
{
 return hpi_control_param1_get(h_control, HPI_SAMPLECLOCK_LOCAL_LOCK,
  plock);
}
