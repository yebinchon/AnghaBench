
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ u16 ;
struct hpi_response_header {int dummy; } ;
struct hpi_response {scalar_t__ error; int size; scalar_t__ specific_error; } ;
struct TYPE_5__ {int data_size; int pb_data; } ;
struct TYPE_6__ {TYPE_1__ data; } ;
struct TYPE_7__ {TYPE_2__ u; } ;
struct TYPE_8__ {TYPE_3__ d; } ;
struct hpi_message {int function; TYPE_4__ u; } ;
struct hpi_adapter_obj {scalar_t__ dsp_crashed; } ;


 int H620_HIF_GET_DATA ;
 int H620_HIF_SEND_DATA ;
 scalar_t__ HPI_ERROR_BACKEND_BASE ;
 scalar_t__ HPI_ERROR_DSP_COMMUNICATION ;




 scalar_t__ hpi6205_transfer_data (struct hpi_adapter_obj*,int ,int ,int ) ;
 int hpios_dsplock_lock (struct hpi_adapter_obj*) ;
 int hpios_dsplock_unlock (struct hpi_adapter_obj*) ;
 scalar_t__ message_response_sequence (struct hpi_adapter_obj*,struct hpi_message*,struct hpi_response*) ;

__attribute__((used)) static void hw_message(struct hpi_adapter_obj *pao, struct hpi_message *phm,
 struct hpi_response *phr)
{

 u16 err = 0;

 hpios_dsplock_lock(pao);

 err = message_response_sequence(pao, phm, phr);


 if (err) {

  if (err >= HPI_ERROR_BACKEND_BASE) {
   phr->error = HPI_ERROR_DSP_COMMUNICATION;
   phr->specific_error = err;
  } else {
   phr->error = err;
  }

  pao->dsp_crashed++;


  phr->size = sizeof(struct hpi_response_header);
  goto err;
 } else
  pao->dsp_crashed = 0;

 if (phr->error != 0)
  goto err;

 switch (phm->function) {
 case 128:
 case 131:
  err = hpi6205_transfer_data(pao, phm->u.d.u.data.pb_data,
   phm->u.d.u.data.data_size, H620_HIF_SEND_DATA);
  break;

 case 130:
 case 129:
  err = hpi6205_transfer_data(pao, phm->u.d.u.data.pb_data,
   phm->u.d.u.data.data_size, H620_HIF_GET_DATA);
  break;

 }
 phr->error = err;

err:
 hpios_dsplock_unlock(pao);

 return;
}
