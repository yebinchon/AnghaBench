
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ obj_type; } ;
union handle_word {TYPE_1__ h; int w; } ;
typedef int u32 ;



char hpi_handle_object(const u32 handle)
{
 union handle_word uhandle;
 uhandle.w = handle;
 return (char)uhandle.h.obj_type;
}
