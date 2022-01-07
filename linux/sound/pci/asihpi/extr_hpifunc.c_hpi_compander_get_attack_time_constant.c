
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;


 int HPI_COMPANDER_ATTACK ;
 int hpi_control_param_get (int ,int ,int ,unsigned int,int *,int *) ;

u16 hpi_compander_get_attack_time_constant(u32 h_control, unsigned int index,
 u32 *attack)
{
 return hpi_control_param_get(h_control, HPI_COMPANDER_ATTACK, 0,
  index, attack, ((void*)0));
}
