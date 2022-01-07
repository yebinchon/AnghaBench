
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ obj_index; scalar_t__ adapter_index; } ;
union handle_word {TYPE_1__ h; scalar_t__ w; } ;
typedef scalar_t__ u32 ;
typedef scalar_t__ u16 ;


 scalar_t__ HPI_ERROR_INVALID_HANDLE ;

__attribute__((used)) static u16 hpi_handle_indexes(const u32 h, u16 *p1, u16 *p2)
{
 union handle_word uhandle;
 if (!h)
  return HPI_ERROR_INVALID_HANDLE;

 uhandle.w = h;

 *p1 = (u16)uhandle.h.adapter_index;
 if (p2)
  *p2 = (u16)uhandle.h.obj_index;

 return 0;
}
