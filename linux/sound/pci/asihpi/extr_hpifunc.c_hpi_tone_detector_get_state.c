
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;


 int HPI_TONEDETECTOR_STATE ;
 int hpi_control_param1_get (int ,int ,int *) ;

u16 hpi_tone_detector_get_state(u32 h_control, u32 *state)
{
 return hpi_control_param1_get(h_control, HPI_TONEDETECTOR_STATE,
  state);
}
