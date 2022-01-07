
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;


 int HPI_SILENCEDETECTOR_THRESHOLD ;
 int hpi_control_param_set (int ,int ,int,int ) ;

u16 hpi_silence_detector_set_threshold(u32 h_control, int threshold)
{
 return hpi_control_param_set(h_control, HPI_SILENCEDETECTOR_THRESHOLD,
  threshold, 0);
}
