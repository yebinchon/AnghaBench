
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct hpi_response {scalar_t__ type; scalar_t__ object; scalar_t__ function; } ;
struct hpi_message {scalar_t__ object; scalar_t__ function; } ;


 int ERROR ;
 int HPI_DEBUG_LOG (int ,char*,scalar_t__) ;
 int HPI_ERROR_INVALID_RESPONSE ;
 scalar_t__ HPI_TYPE_RESPONSE ;

u16 hpi_validate_response(struct hpi_message *phm, struct hpi_response *phr)
{
 if (phr->type != HPI_TYPE_RESPONSE) {
  HPI_DEBUG_LOG(ERROR, "header type %d invalid\n", phr->type);
  return HPI_ERROR_INVALID_RESPONSE;
 }

 if (phr->object != phm->object) {
  HPI_DEBUG_LOG(ERROR, "header object %d invalid\n",
   phr->object);
  return HPI_ERROR_INVALID_RESPONSE;
 }

 if (phr->function != phm->function) {
  HPI_DEBUG_LOG(ERROR, "header function %d invalid\n",
   phr->function);
  return HPI_ERROR_INVALID_RESPONSE;
 }

 return 0;
}
