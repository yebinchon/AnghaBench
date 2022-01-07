
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
typedef short u16 ;


 int HPI_TUNER_GAIN ;
 short hpi_control_param1_get (scalar_t__,int ,scalar_t__*) ;

u16 hpi_tuner_get_gain(u32 h_control, short *pn_gain)
{
 u32 gain = 0;
 u16 error = 0;

 error = hpi_control_param1_get(h_control, HPI_TUNER_GAIN, &gain);
 if (pn_gain)
  *pn_gain = (u16)gain;
 return error;
}
