
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;


 int HPI_SAMPLECLOCK_SOURCE ;
 int hpi_control_param_set (int ,int ,int ,int ) ;

u16 hpi_sample_clock_set_source(u32 h_control, u16 source)
{
 return hpi_control_param_set(h_control, HPI_SAMPLECLOCK_SOURCE,
  source, 0);
}
