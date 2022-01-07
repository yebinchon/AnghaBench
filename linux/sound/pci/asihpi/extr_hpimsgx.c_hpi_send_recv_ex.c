
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hpi_response {scalar_t__ error; } ;
struct hpi_message {scalar_t__ type; int object; scalar_t__ adapter_index; int function; } ;


 int DEBUG ;
 scalar_t__ HPIMSGX_ALLADAPTERS ;
 int HPI_DEBUG_LEVEL_ERROR ;
 int HPI_DEBUG_MESSAGE (int ,struct hpi_message*) ;
 int HPI_DEBUG_RESPONSE (struct hpi_response*) ;
 int HPI_ERROR_BAD_ADAPTER_NUMBER ;
 scalar_t__ HPI_ERROR_DSP_COMMUNICATION ;
 int HPI_ERROR_INVALID_TYPE ;
 scalar_t__ HPI_MAX_ADAPTERS ;





 scalar_t__ HPI_TYPE_REQUEST ;
 int adapter_message (struct hpi_message*,struct hpi_response*,void*) ;
 int hpi_debug_level_set (int ) ;
 int hpi_init_response (struct hpi_response*,int,int ,int ) ;
 int hw_entry_point (struct hpi_message*,struct hpi_response*) ;
 int instream_message (struct hpi_message*,struct hpi_response*,void*) ;
 scalar_t__ logging_enabled ;
 int mixer_message (struct hpi_message*,struct hpi_response*) ;
 int outstream_message (struct hpi_message*,struct hpi_response*,void*) ;
 int subsys_message (struct hpi_message*,struct hpi_response*,void*) ;

void hpi_send_recv_ex(struct hpi_message *phm, struct hpi_response *phr,
 void *h_owner)
{

 if (logging_enabled)
  HPI_DEBUG_MESSAGE(DEBUG, phm);

 if (phm->type != HPI_TYPE_REQUEST) {
  hpi_init_response(phr, phm->object, phm->function,
   HPI_ERROR_INVALID_TYPE);
  return;
 }

 if (phm->adapter_index >= HPI_MAX_ADAPTERS
  && phm->adapter_index != HPIMSGX_ALLADAPTERS) {
  hpi_init_response(phr, phm->object, phm->function,
   HPI_ERROR_BAD_ADAPTER_NUMBER);
  return;
 }

 switch (phm->object) {
 case 128:
  subsys_message(phm, phr, h_owner);
  break;

 case 132:
  adapter_message(phm, phr, h_owner);
  break;

 case 130:
  mixer_message(phm, phr);
  break;

 case 129:
  outstream_message(phm, phr, h_owner);
  break;

 case 131:
  instream_message(phm, phr, h_owner);
  break;

 default:
  hw_entry_point(phm, phr);
  break;
 }

 if (logging_enabled)
  HPI_DEBUG_RESPONSE(phr);

 if (phr->error >= HPI_ERROR_DSP_COMMUNICATION) {
  hpi_debug_level_set(HPI_DEBUG_LEVEL_ERROR);
  logging_enabled = 0;
 }
}
