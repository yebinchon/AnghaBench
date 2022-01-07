
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct hpi_response {int dummy; } ;
struct hpi_message {int dummy; } ;


 int HPI_ERROR_PROCESSING_MESSAGE ;
 int hpi_init_message (struct hpi_message*,int ,int ) ;
 int hpi_init_response (struct hpi_response*,int ,int ,int ) ;

void hpi_init_message_response(struct hpi_message *phm,
 struct hpi_response *phr, u16 object, u16 function)
{
 hpi_init_message(phm, object, function);


 hpi_init_response(phr, object, function,
  HPI_ERROR_PROCESSING_MESSAGE);
}
