
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;


 int HPI_TUNER_HDRADIO_BLEND ;
 int hpi_control_param_set (int ,int ,int const,int ) ;

u16 hpi_tuner_set_hd_radio_signal_blend(u32 h_control, const u32 blend)
{
 return hpi_control_param_set(h_control, HPI_TUNER_HDRADIO_BLEND,
  blend, 0);
}
