
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;


 int HPI_COMPANDER_RATIO ;
 int hpi_control_param_get (int ,int ,int ,int ,int *,int *) ;

u16 hpi_compander_get_ratio(u32 h_control, u32 index, u32 *ratio100)
{
 return hpi_control_param_get(h_control, HPI_COMPANDER_RATIO, 0, index,
  ratio100, ((void*)0));
}
