
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u16 ;
struct hpi_response {size_t size; size_t object; size_t function; size_t error; scalar_t__ version; scalar_t__ specific_error; int type; } ;


 size_t HPI_OBJ_MAXINDEX ;
 int HPI_TYPE_RESPONSE ;
 size_t array_index_nospec (size_t,size_t) ;
 int memset (struct hpi_response*,int ,int) ;
 size_t* res_size ;

void hpi_init_response(struct hpi_response *phr, u16 object, u16 function,
 u16 error)
{
 u16 size;

 if ((object > 0) && (object <= HPI_OBJ_MAXINDEX)) {
  object = array_index_nospec(object, HPI_OBJ_MAXINDEX + 1);
  size = res_size[object];
 } else {
  size = sizeof(*phr);
 }

 memset(phr, 0, sizeof(*phr));
 phr->size = size;
 phr->type = HPI_TYPE_RESPONSE;
 phr->object = object;
 phr->function = function;
 phr->error = error;
 phr->specific_error = 0;
 phr->version = 0;
}
