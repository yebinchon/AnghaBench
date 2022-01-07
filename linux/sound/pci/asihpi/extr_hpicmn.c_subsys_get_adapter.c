
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef size_t u16 ;
struct TYPE_6__ {scalar_t__ adapter_type; int adapter_index; } ;
struct TYPE_7__ {TYPE_2__ s; } ;
struct hpi_response {int error; TYPE_3__ u; } ;
struct hpi_message {int obj_index; } ;
struct TYPE_8__ {TYPE_1__* adapter; } ;
struct TYPE_5__ {scalar_t__ type; int index; } ;


 int HPI_ERROR_INVALID_OBJ_INDEX ;
 size_t HPI_MAX_ADAPTERS ;
 TYPE_4__ adapters ;

__attribute__((used)) static void subsys_get_adapter(struct hpi_message *phm,
 struct hpi_response *phr)
{
 int count = phm->obj_index;
 u16 index = 0;


 for (index = 0; index < HPI_MAX_ADAPTERS; index++) {
  if (adapters.adapter[index].type) {
   if (!count)
    break;
   count--;
  }
 }

 if (index < HPI_MAX_ADAPTERS) {
  phr->u.s.adapter_index = adapters.adapter[index].index;
  phr->u.s.adapter_type = adapters.adapter[index].type;
 } else {
  phr->u.s.adapter_index = 0;
  phr->u.s.adapter_type = 0;
  phr->error = HPI_ERROR_INVALID_OBJ_INDEX;
 }
}
