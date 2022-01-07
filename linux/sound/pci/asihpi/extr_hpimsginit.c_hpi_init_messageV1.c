
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u16 ;
struct hpi_message_header {int version; scalar_t__ function; scalar_t__ object; int type; scalar_t__ size; } ;


 scalar_t__ HPI_OBJ_MAXINDEX ;
 int HPI_TYPE_REQUEST ;
 int memset (struct hpi_message_header*,int ,scalar_t__) ;

__attribute__((used)) static void hpi_init_messageV1(struct hpi_message_header *phm, u16 size,
 u16 object, u16 function)
{
 memset(phm, 0, size);
 if ((object > 0) && (object <= HPI_OBJ_MAXINDEX)) {
  phm->size = size;
  phm->type = HPI_TYPE_REQUEST;
  phm->object = object;
  phm->function = function;
  phm->version = 1;

 }
}
