
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;


 int HPI_GENERIC_EVENT_ENABLE ;
 int hpi_control_param1_get (int ,int ,int *) ;

u16 hpi_silence_detector_get_event_enable(u32 h_control, u32 *event_enable)
{
 return hpi_control_param1_get(h_control, HPI_GENERIC_EVENT_ENABLE,
  event_enable);
}
