
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {char obj_type; int obj_index; scalar_t__ read_only; scalar_t__ spare; int adapter_index; } ;
union handle_word {int w; TYPE_1__ h; } ;
typedef int u32 ;
typedef int u16 ;



u32 hpi_indexes_to_handle(const char c_object, const u16 adapter_index,
 const u16 object_index)
{
 union handle_word handle;

 handle.h.adapter_index = adapter_index;
 handle.h.spare = 0;
 handle.h.read_only = 0;
 handle.h.obj_type = c_object;
 handle.h.obj_index = object_index;
 return handle.w;
}
