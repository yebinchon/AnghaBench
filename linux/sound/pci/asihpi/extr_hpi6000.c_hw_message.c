
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_7__ ;
typedef struct TYPE_13__ TYPE_6__ ;
typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int u16 ;
struct hpi_response_header {int dummy; } ;
struct TYPE_12__ {int dsp_index; int count; } ;
struct TYPE_13__ {TYPE_5__ assert; } ;
struct TYPE_14__ {TYPE_6__ ax; } ;
struct hpi_response {int error; int specific_error; int size; TYPE_7__ u; } ;
struct TYPE_8__ {int object_type; int stream_index; } ;
struct TYPE_9__ {TYPE_1__ stream; } ;
struct TYPE_10__ {TYPE_2__ u; } ;
struct TYPE_11__ {TYPE_3__ d; } ;
struct hpi_message {int function; TYPE_4__ u; int object; int obj_index; } ;
struct hpi_hw_obj {int num_dsp; } ;
struct hpi_adapter_obj {struct hpi_hw_obj* priv; } ;



 int HPI_ERROR_BACKEND_BASE ;
 int HPI_ERROR_DSP_COMMUNICATION ;
 int HPI_ERROR_NO_INTERDSP_GROUPS ;

 int HPI_ISTREAM_GROUP_ADD ;


 int HPI_OSTREAM_GROUP_ADD ;

 int get_dsp_index (struct hpi_adapter_obj*,struct hpi_message*) ;
 int hpi6000_get_data (struct hpi_adapter_obj*,int,struct hpi_message*,struct hpi_response*) ;
 int hpi6000_message_response_sequence (struct hpi_adapter_obj*,int,struct hpi_message*,struct hpi_response*) ;
 int hpi6000_send_data (struct hpi_adapter_obj*,int,struct hpi_message*,struct hpi_response*) ;
 int hpios_dsplock_lock (struct hpi_adapter_obj*) ;
 int hpios_dsplock_unlock (struct hpi_adapter_obj*) ;

__attribute__((used)) static void hw_message(struct hpi_adapter_obj *pao, struct hpi_message *phm,
 struct hpi_response *phr)
{
 u16 error = 0;
 u16 dsp_index = 0;
 struct hpi_hw_obj *phw = pao->priv;
 u16 num_dsp = phw->num_dsp;

 if (num_dsp < 2)
  dsp_index = 0;
 else {
  dsp_index = get_dsp_index(pao, phm);


  if ((phm->function == HPI_ISTREAM_GROUP_ADD)
   || (phm->function == HPI_OSTREAM_GROUP_ADD)) {
   struct hpi_message hm;
   u16 add_index;
   hm.obj_index = phm->u.d.u.stream.stream_index;
   hm.object = phm->u.d.u.stream.object_type;
   add_index = get_dsp_index(pao, &hm);
   if (add_index != dsp_index) {
    phr->error = HPI_ERROR_NO_INTERDSP_GROUPS;
    return;
   }
  }
 }

 hpios_dsplock_lock(pao);
 error = hpi6000_message_response_sequence(pao, dsp_index, phm, phr);

 if (error)
  goto err;

 if (phr->error)
  goto out;

 switch (phm->function) {
 case 128:
 case 131:
  error = hpi6000_send_data(pao, dsp_index, phm, phr);
  break;
 case 130:
 case 129:
  error = hpi6000_get_data(pao, dsp_index, phm, phr);
  break;
 case 132:
  phr->u.ax.assert.dsp_index = 0;
  if (num_dsp == 2) {
   if (!phr->u.ax.assert.count) {

    error = hpi6000_message_response_sequence(pao,
     1, phm, phr);
    phr->u.ax.assert.dsp_index = 1;
   }
  }
 }

err:
 if (error) {
  if (error >= HPI_ERROR_BACKEND_BASE) {
   phr->error = HPI_ERROR_DSP_COMMUNICATION;
   phr->specific_error = error;
  } else {
   phr->error = error;
  }


  phr->size = sizeof(struct hpi_response_header);
 }
out:
 hpios_dsplock_unlock(pao);
 return;
}
