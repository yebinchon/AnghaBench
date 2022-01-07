
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct hpi_response_header {int version; int error; int type; int size; } ;


 int HPI_ERROR_PROCESSING_MESSAGE ;
 int HPI_TYPE_RESPONSE ;
 int memset (struct hpi_response_header*,int ,int ) ;

void hpi_init_responseV1(struct hpi_response_header *phr, u16 size,
 u16 object, u16 function)
{
 (void)object;
 (void)function;
 memset(phr, 0, size);
 phr->size = size;
 phr->version = 1;
 phr->type = HPI_TYPE_RESPONSE;
 phr->error = HPI_ERROR_PROCESSING_MESSAGE;
}
