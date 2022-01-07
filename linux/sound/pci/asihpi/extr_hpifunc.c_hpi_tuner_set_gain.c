
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;


 int HPI_TUNER_GAIN ;
 int hpi_control_param_set (int ,int ,short,int ) ;

u16 hpi_tuner_set_gain(u32 h_control, short gain)
{
 return hpi_control_param_set(h_control, HPI_TUNER_GAIN, gain, 0);
}
