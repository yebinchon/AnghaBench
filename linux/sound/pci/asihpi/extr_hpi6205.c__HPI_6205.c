
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hpi_response {int error; } ;
struct hpi_message {scalar_t__ function; int type; int object; } ;
struct hpi_adapter_obj {int dsp_crashed; } ;


 scalar_t__ HPI_ADAPTER_DEBUG_READ ;
 int HPI_DEBUG_LOG (int ,char*,...) ;
 int HPI_ERROR_DSP_HARDWARE ;
 int HPI_ERROR_INVALID_TYPE ;
 int HPI_ERROR_PROCESSING_MESSAGE ;





 scalar_t__ HPI_SUBSYS_CREATE_ADAPTER ;

 int VERBOSE ;
 int WARNING ;
 int adapter_message (struct hpi_adapter_obj*,struct hpi_message*,struct hpi_response*) ;
 int control_message (struct hpi_adapter_obj*,struct hpi_message*,struct hpi_response*) ;
 int hpi_init_response (struct hpi_response*,int ,scalar_t__,int ) ;
 int hw_message (struct hpi_adapter_obj*,struct hpi_message*,struct hpi_response*) ;
 int instream_message (struct hpi_adapter_obj*,struct hpi_message*,struct hpi_response*) ;
 int outstream_message (struct hpi_adapter_obj*,struct hpi_message*,struct hpi_response*) ;
 int subsys_message (struct hpi_adapter_obj*,struct hpi_message*,struct hpi_response*) ;

__attribute__((used)) static
void _HPI_6205(struct hpi_adapter_obj *pao, struct hpi_message *phm,
 struct hpi_response *phr)
{
 if (pao && (pao->dsp_crashed >= 10)
  && (phm->function != HPI_ADAPTER_DEBUG_READ)) {

  hpi_init_response(phr, phm->object, phm->function,
   HPI_ERROR_DSP_HARDWARE);
  HPI_DEBUG_LOG(WARNING, " %d,%d dsp crashed.\n", phm->object,
   phm->function);
  return;
 }


 if (phm->function != HPI_SUBSYS_CREATE_ADAPTER)
  phr->error = HPI_ERROR_PROCESSING_MESSAGE;

 HPI_DEBUG_LOG(VERBOSE, "start of switch\n");
 switch (phm->type) {
 case 128:
  switch (phm->object) {
  case 129:
   subsys_message(pao, phm, phr);
   break;

  case 133:
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
