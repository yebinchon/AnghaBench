
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;


 int HPI_TONEDETECTOR_FREQUENCY ;
 int hpi_control_param_get (int ,int ,int ,int ,int *,int *) ;

u16 hpi_tone_detector_get_frequency(u32 h_control, u32 index, u32 *frequency)
{
 return hpi_control_param_get(h_control, HPI_TONEDETECTOR_FREQUENCY,
  index, 0, frequency, ((void*)0));
}
