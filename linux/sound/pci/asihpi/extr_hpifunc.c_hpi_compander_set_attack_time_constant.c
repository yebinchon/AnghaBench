
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;


 int HPI_COMPANDER_ATTACK ;
 int hpi_control_param_set (int ,int ,int ,unsigned int) ;

u16 hpi_compander_set_attack_time_constant(u32 h_control, unsigned int index,
 u32 attack)
{
 return hpi_control_param_set(h_control, HPI_COMPANDER_ATTACK, attack,
  index);
}
