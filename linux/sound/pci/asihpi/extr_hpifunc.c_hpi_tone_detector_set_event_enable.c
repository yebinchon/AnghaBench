
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
typedef int u16 ;


 int HPI_GENERIC_EVENT_ENABLE ;
 int hpi_control_param_set (scalar_t__,int ,scalar_t__,int ) ;

u16 hpi_tone_detector_set_event_enable(u32 h_control, u32 event_enable)
{
 return hpi_control_param_set(h_control, HPI_GENERIC_EVENT_ENABLE,
  (u32)event_enable, 0);
}
