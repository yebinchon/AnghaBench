
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hpi_response_header {int dummy; } ;
struct hpi_response {int size; int error; } ;
struct hpi_message {scalar_t__ object; scalar_t__ function; int type; int adapter_index; } ;
struct hpi_adapter_res {int dummy; } ;
struct hpi_adapter_obj {int dsp_crashed; } ;


 int DEBUG ;
 int HPI_DEBUG_LOG (int ,char*,int ) ;
 int HPI_ERROR_BAD_ADAPTER_NUMBER ;
 int HPI_ERROR_DSP_HARDWARE ;
 int HPI_ERROR_INVALID_TYPE ;
 int HPI_ERROR_PROCESSING_MESSAGE ;





 scalar_t__ HPI_SUBSYS_CREATE_ADAPTER ;

 int adapter_message (struct hpi_adapter_obj*,struct hpi_message*,struct hpi_response*) ;
 int control_message (struct hpi_adapter_obj*,struct hpi_message*,struct hpi_response*) ;
 struct hpi_adapter_obj* hpi_find_adapter (int ) ;
 int hpi_init_response (struct hpi_response*,scalar_t__,scalar_t__,int ) ;
 int hw_message (struct hpi_adapter_obj*,struct hpi_message*,struct hpi_response*) ;
 int instream_message (struct hpi_adapter_obj*,struct hpi_message*,struct hpi_response*) ;
 int outstream_message (struct hpi_adapter_obj*,struct hpi_message*,struct hpi_response*) ;
 int subsys_message (struct hpi_message*,struct hpi_response*) ;

void HPI_6000(struct hpi_message *phm, struct hpi_response *phr)
{
 struct hpi_adapter_obj *pao = ((void*)0);

 if (phm->object != 129) {
  pao = hpi_find_adapter(phm->adapter_index);
  if (!pao) {
   hpi_init_response(phr, phm->object, phm->function,
    HPI_ERROR_BAD_ADAPTER_NUMBER);
   HPI_DEBUG_LOG(DEBUG, "invalid adapter index: %d \n",
    phm->adapter_index);
   return;
  }


  if (pao->dsp_crashed >= 10) {
   hpi_init_response(phr, phm->object, phm->function,
    HPI_ERROR_DSP_HARDWARE);
   HPI_DEBUG_LOG(DEBUG, "adapter %d dsp crashed\n",
    phm->adapter_index);
   return;
  }
 }

 if (phm->function != HPI_SUBSYS_CREATE_ADAPTER)
  hpi_init_response(phr, phm->object, phm->function,
   HPI_ERROR_PROCESSING_MESSAGE);

 switch (phm->type) {
 case 128:
  switch (phm->object) {
  case 129:
   subsys_message(phm, phr);
   break;

  case 133:
   phr->size =
    sizeof(struct hpi_response_header) +
    sizeof(struct hpi_adapter_res);
   adapter_message(pao, phm, phr);
   break;

  case 132:
   control_message(pao, phm, phr);
   break;

  case 130:
   outstream_message(pao, phm, phr);
   break;

  case 131:
   instream_message(pao, phm, phr);
   break;

  default:
   hw_message(pao, phm, phr);
   break;
  }
  break;

 default:
  phr->error = HPI_ERROR_INVALID_TYPE;
  break;
 }
}
