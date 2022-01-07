
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;


 int HPI_TUNER_MODE ;
 int hpi_control_param_get (int ,int ,int ,int ,int *,int *) ;

u16 hpi_tuner_get_mode(u32 h_control, u32 mode, u32 *pn_value)
{
 return hpi_control_param_get(h_control, HPI_TUNER_MODE, mode, 0,
  pn_value, ((void*)0));
}
