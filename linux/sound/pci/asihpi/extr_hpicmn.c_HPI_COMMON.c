
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hpi_response {int error; } ;
struct hpi_message {int type; int object; } ;


 int HPI_ERROR_INVALID_TYPE ;


 int subsys_message (struct hpi_message*,struct hpi_response*) ;

void HPI_COMMON(struct hpi_message *phm, struct hpi_response *phr)
{
 switch (phm->type) {
 case 128:
  switch (phm->object) {
  case 129:
   subsys_message(phm, phr);
   break;
  }
  break;

 default:
  phr->error = HPI_ERROR_INVALID_TYPE;
  break;
 }
}
