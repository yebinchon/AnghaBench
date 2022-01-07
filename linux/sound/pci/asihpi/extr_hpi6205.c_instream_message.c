
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hpi_response {int error; } ;
struct hpi_message {scalar_t__ obj_index; int function; int adapter_index; } ;
struct hpi_adapter_obj {int dummy; } ;


 int HPI_DEBUG_LOG (int ,char*,scalar_t__,int ) ;
 int HPI_ERROR_INVALID_OBJ_INDEX ;






 scalar_t__ HPI_MAX_STREAMS ;
 int WARNING ;
 int hw_message (struct hpi_adapter_obj*,struct hpi_message*,struct hpi_response*) ;
 int instream_get_info (struct hpi_adapter_obj*,struct hpi_message*,struct hpi_response*) ;
 int instream_host_buffer_allocate (struct hpi_adapter_obj*,struct hpi_message*,struct hpi_response*) ;
 int instream_host_buffer_free (struct hpi_adapter_obj*,struct hpi_message*,struct hpi_response*) ;
 int instream_host_buffer_get_info (struct hpi_adapter_obj*,struct hpi_message*,struct hpi_response*) ;
 int instream_read (struct hpi_adapter_obj*,struct hpi_message*,struct hpi_response*) ;
 int instream_start (struct hpi_adapter_obj*,struct hpi_message*,struct hpi_response*) ;

__attribute__((used)) static void instream_message(struct hpi_adapter_obj *pao,
 struct hpi_message *phm, struct hpi_response *phr)
{

 if (phm->obj_index >= HPI_MAX_STREAMS) {
  phr->error = HPI_ERROR_INVALID_OBJ_INDEX;
  HPI_DEBUG_LOG(WARNING,
   "Message referencing invalid stream %d "
   "on adapter index %d\n", phm->obj_index,
   phm->adapter_index);
  return;
 }

 switch (phm->function) {
 case 129:
  instream_read(pao, phm, phr);
  break;
 case 133:
  instream_get_info(pao, phm, phr);
  break;
 case 132:
  instream_host_buffer_allocate(pao, phm, phr);
  break;
 case 130:
  instream_host_buffer_get_info(pao, phm, phr);
  break;
 case 131:
  instream_host_buffer_free(pao, phm, phr);
  break;
 case 128:
  instream_start(pao, phm, phr);
  break;
 default:
  hw_message(pao, phm, phr);
  break;
 }
}
