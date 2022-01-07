
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hpi_response {int dummy; } ;
struct hpi_message {scalar_t__ object; int function; int adapter_index; } ;
struct hpi_adapter_obj {int dummy; } ;


 int HPI_ERROR_BAD_ADAPTER_NUMBER ;
 scalar_t__ HPI_OBJ_SUBSYSTEM ;
 int _HPI_6205 (struct hpi_adapter_obj*,struct hpi_message*,struct hpi_response*) ;
 struct hpi_adapter_obj* hpi_find_adapter (int ) ;
 int hpi_init_response (struct hpi_response*,scalar_t__,int ,int ) ;

void HPI_6205(struct hpi_message *phm, struct hpi_response *phr)
{
 struct hpi_adapter_obj *pao = ((void*)0);

 if (phm->object != HPI_OBJ_SUBSYSTEM) {

  pao = hpi_find_adapter(phm->adapter_index);
 } else {

  _HPI_6205(((void*)0), phm, phr);
  return;
 }

 if (pao)
  _HPI_6205(pao, phm, phr);
 else
  hpi_init_response(phr, phm->object, phm->function,
   HPI_ERROR_BAD_ADAPTER_NUMBER);
}
