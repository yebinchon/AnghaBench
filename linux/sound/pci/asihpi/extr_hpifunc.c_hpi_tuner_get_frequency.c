
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;


 int HPI_TUNER_FREQ ;
 int hpi_control_param1_get (int ,int ,int *) ;

u16 hpi_tuner_get_frequency(u32 h_control, u32 *pw_freq_ink_hz)
{
 return hpi_control_param1_get(h_control, HPI_TUNER_FREQ,
  pw_freq_ink_hz);
}
