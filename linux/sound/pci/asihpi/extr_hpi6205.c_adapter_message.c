
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hpi_response {int dummy; } ;
struct hpi_message {int function; } ;
struct hpi_adapter_obj {int dummy; } ;



 int adapter_delete (struct hpi_adapter_obj*,struct hpi_message*,struct hpi_response*) ;
 int hw_message (struct hpi_adapter_obj*,struct hpi_message*,struct hpi_response*) ;

__attribute__((used)) static void adapter_message(struct hpi_adapter_obj *pao,
 struct hpi_message *phm, struct hpi_response *phr)
{
 switch (phm->function) {
 case 128:
  adapter_delete(pao, phm, phr);
  break;
 default:
  hw_message(pao, phm, phr);
  break;
 }
}
