
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u32 ;
typedef int u16 ;
struct hpi_response_header {int dummy; } ;
struct hpi_response {int specific_error; int size; int error; } ;
struct TYPE_3__ {int size; } ;
struct hpi_message {int size; scalar_t__ function; TYPE_1__ response; } ;
struct hpi_hw_obj {struct bus_master_interface* p_interface_buffer; } ;
struct hpi_adapter_obj {struct hpi_hw_obj* priv; } ;
struct TYPE_4__ {struct hpi_message response_buffer; struct hpi_response message_buffer; } ;
struct bus_master_interface {TYPE_2__ u; int dsp_ack; } ;


 int DEBUG ;
 int ERROR ;
 int H620_HIF_GET_RESP ;
 int H620_HIF_IDLE ;
 int HPI6205_ERROR_MSG_RESP_IDLE_TIMEOUT ;
 int HPI6205_ERROR_MSG_RESP_TIMEOUT ;
 scalar_t__ HPI6205_TIMEOUT ;
 scalar_t__ HPI_ADAPTER_CLOSE ;
 int HPI_DEBUG_LOG (int ,char*,...) ;
 int HPI_ERROR_MESSAGE_BUFFER_TOO_SMALL ;
 int HPI_ERROR_RESPONSE_BUFFER_TOO_SMALL ;
 int VERBOSE ;
 int hpi_validate_response (struct hpi_message*,struct hpi_response*) ;
 int memcpy (struct hpi_response*,struct hpi_message*,int) ;
 int message_count ;
 int send_dsp_command (struct hpi_hw_obj*,int ) ;
 scalar_t__ wait_dsp_ack (struct hpi_hw_obj*,int ,scalar_t__) ;

__attribute__((used)) static u16 message_response_sequence(struct hpi_adapter_obj *pao,
 struct hpi_message *phm, struct hpi_response *phr)
{
 u32 time_out, time_out2;
 struct hpi_hw_obj *phw = pao->priv;
 struct bus_master_interface *interface = phw->p_interface_buffer;
 u16 err = 0;

 message_count++;
 if (phm->size > sizeof(interface->u.message_buffer)) {
  phr->error = HPI_ERROR_MESSAGE_BUFFER_TOO_SMALL;
  phr->specific_error = sizeof(interface->u.message_buffer);
  phr->size = sizeof(struct hpi_response_header);
  HPI_DEBUG_LOG(ERROR,
   "message len %d too big for buffer %zd \n", phm->size,
   sizeof(interface->u.message_buffer));
  return 0;
 }




 if (!wait_dsp_ack(phw, H620_HIF_IDLE, HPI6205_TIMEOUT)) {
  HPI_DEBUG_LOG(DEBUG, "timeout waiting for idle\n");
  return HPI6205_ERROR_MSG_RESP_IDLE_TIMEOUT;
 }

 memcpy(&interface->u.message_buffer, phm, phm->size);

 send_dsp_command(phw, H620_HIF_GET_RESP);

 time_out2 = wait_dsp_ack(phw, H620_HIF_GET_RESP, HPI6205_TIMEOUT);

 if (!time_out2) {
  HPI_DEBUG_LOG(ERROR,
   "(%u) Timed out waiting for " "GET_RESP state [%x]\n",
   message_count, interface->dsp_ack);
 } else {
  HPI_DEBUG_LOG(VERBOSE,
   "(%u) transition to GET_RESP after %u\n",
   message_count, HPI6205_TIMEOUT - time_out2);
 }

 time_out = HPI6205_TIMEOUT;


 if (time_out) {
  if (interface->u.response_buffer.response.size <= phr->size)
   memcpy(phr, &interface->u.response_buffer,
    interface->u.response_buffer.response.size);
  else {
   HPI_DEBUG_LOG(ERROR,
    "response len %d too big for buffer %d\n",
    interface->u.response_buffer.response.size,
    phr->size);
   memcpy(phr, &interface->u.response_buffer,
    sizeof(struct hpi_response_header));
   phr->error = HPI_ERROR_RESPONSE_BUFFER_TOO_SMALL;
   phr->specific_error =
    interface->u.response_buffer.response.size;
   phr->size = sizeof(struct hpi_response_header);
  }
 }

 send_dsp_command(phw, H620_HIF_IDLE);

 if (!time_out || !time_out2) {
  HPI_DEBUG_LOG(DEBUG, "something timed out!\n");
  return HPI6205_ERROR_MSG_RESP_TIMEOUT;
 }


 if (phm->function == HPI_ADAPTER_CLOSE) {
  if (!wait_dsp_ack(phw, H620_HIF_IDLE, HPI6205_TIMEOUT)) {
   HPI_DEBUG_LOG(DEBUG,
    "Timeout waiting for idle "
    "(on adapter_close)\n");
   return HPI6205_ERROR_MSG_RESP_IDLE_TIMEOUT;
  }
 }
 err = hpi_validate_response(phm, phr);
 return err;
}
