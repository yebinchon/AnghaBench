
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;


 int HPI_ADAPTER_MODE_SET ;
 int hpi_adapter_set_mode_ex (int ,int ,int ) ;

u16 hpi_adapter_set_mode(u16 adapter_index, u32 adapter_mode)
{
 return hpi_adapter_set_mode_ex(adapter_index, adapter_mode,
  HPI_ADAPTER_MODE_SET);
}
