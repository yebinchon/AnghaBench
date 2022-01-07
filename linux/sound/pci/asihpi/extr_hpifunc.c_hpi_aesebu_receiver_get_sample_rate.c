
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;


 int HPI_AESEBURX_SAMPLERATE ;
 int hpi_control_param1_get (int ,int ,int *) ;

u16 hpi_aesebu_receiver_get_sample_rate(u32 h_control, u32 *psample_rate)
{
 return hpi_control_param1_get(h_control, HPI_AESEBURX_SAMPLERATE,
  psample_rate);
}
