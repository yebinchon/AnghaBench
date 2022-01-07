
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;


 int hpi_handle_indexes (int const,int *,int *) ;

void hpi_handle_to_indexes(const u32 handle, u16 *pw_adapter_index,
 u16 *pw_object_index)
{
 hpi_handle_indexes(handle, pw_adapter_index, pw_object_index);
}
