
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;


 int HPI_COMPANDER_MAKEUPGAIN ;
 int hpi_control_log_get2 (int ,int ,short*,int *) ;

u16 hpi_compander_get_makeup_gain(u32 h_control, short *makeup_gain0_01dB)
{
 return hpi_control_log_get2(h_control, HPI_COMPANDER_MAKEUPGAIN,
  makeup_gain0_01dB, ((void*)0));
}
