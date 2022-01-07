
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct hpi_response_header {int dummy; } ;
struct hpi_message_header {int dummy; } ;


 int hpi_init_messageV1 (struct hpi_message_header*,int ,int ,int ) ;
 int hpi_init_responseV1 (struct hpi_response_header*,int ,int ,int ) ;

void hpi_init_message_responseV1(struct hpi_message_header *phm, u16 msg_size,
 struct hpi_response_header *phr, u16 res_size, u16 object,
 u16 function)
{
 hpi_init_messageV1(phm, msg_size, object, function);
 hpi_init_responseV1(phr, res_size, object, function);
}
