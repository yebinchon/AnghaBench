
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hpi_response {int error; } ;
struct hpi_message {int function; } ;
struct hpi_adapter_obj {int dummy; } ;


 int HPI_ERROR_INVALID_FUNC ;

 int subsys_create_adapter (struct hpi_message*,struct hpi_response*) ;

__attribute__((used)) static void subsys_message(struct hpi_adapter_obj *pao,
 struct hpi_message *phm, struct hpi_response *phr)
{
 switch (phm->function) {
 case 128:
  subsys_create_adapter(phm, phr);
  break;
 default:
  phr->error = HPI_ERROR_INVALID_FUNC;
  break;
 }
}
