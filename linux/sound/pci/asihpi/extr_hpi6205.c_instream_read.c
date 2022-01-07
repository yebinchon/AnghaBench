
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u8 ;
typedef scalar_t__ u32 ;
struct hpi_response {int error; } ;
struct TYPE_5__ {scalar_t__ data_size; scalar_t__ pb_data; } ;
struct TYPE_6__ {TYPE_1__ data; } ;
struct TYPE_7__ {TYPE_2__ u; } ;
struct TYPE_8__ {TYPE_3__ d; } ;
struct hpi_message {size_t obj_index; TYPE_4__ u; int function; int object; } ;
struct hpi_hw_obj {int * instream_host_buffers; int * instream_host_buffer_size; struct bus_master_interface* p_interface_buffer; } ;
struct hpi_hostbuffer_status {int size_in_bytes; int host_index; } ;
struct hpi_adapter_obj {struct hpi_hw_obj* priv; } ;
struct bus_master_interface {struct hpi_hostbuffer_status* instream_host_buffer_status; } ;


 int HPI_ERROR_INVALID_DATASIZE ;
 int HPI_ERROR_INVALID_OPERATION ;
 int hpi_init_response (struct hpi_response*,int ,int ,int ) ;
 scalar_t__ hpios_locked_mem_get_virt_addr (int *,void*) ;
 scalar_t__ hpios_locked_mem_valid (int *) ;
 int hw_message (struct hpi_adapter_obj*,struct hpi_message*,struct hpi_response*) ;
 scalar_t__ instream_get_bytes_available (struct hpi_hostbuffer_status*) ;
 int memcpy (int *,int *,scalar_t__) ;
 scalar_t__ min (scalar_t__,int) ;

__attribute__((used)) static void instream_read(struct hpi_adapter_obj *pao,
 struct hpi_message *phm, struct hpi_response *phr)
{
 struct hpi_hw_obj *phw = pao->priv;
 struct bus_master_interface *interface = phw->p_interface_buffer;
 struct hpi_hostbuffer_status *status;
 u32 data_available;
 u8 *p_bbm_data;
 u32 l_first_read;
 u8 *p_app_data = (u8 *)phm->u.d.u.data.pb_data;

 if (!phw->instream_host_buffer_size[phm->obj_index]) {
  hw_message(pao, phm, phr);
  return;
 }
 hpi_init_response(phr, phm->object, phm->function, 0);

 status = &interface->instream_host_buffer_status[phm->obj_index];
 data_available = instream_get_bytes_available(status);
 if (data_available < phm->u.d.u.data.data_size) {
  phr->error = HPI_ERROR_INVALID_DATASIZE;
  return;
 }

 if (hpios_locked_mem_valid(&phw->instream_host_buffers[phm->
    obj_index])) {
  if (hpios_locked_mem_get_virt_addr(&phw->
    instream_host_buffers[phm->obj_index],
    (void *)&p_bbm_data)) {
   phr->error = HPI_ERROR_INVALID_OPERATION;
   return;
  }



  l_first_read =
   min(phm->u.d.u.data.data_size,
   status->size_in_bytes -
   (status->host_index & (status->size_in_bytes - 1)));

  memcpy(p_app_data,
   p_bbm_data +
   (status->host_index & (status->size_in_bytes - 1)),
   l_first_read);

  memcpy(p_app_data + l_first_read, p_bbm_data,
   phm->u.d.u.data.data_size - l_first_read);
 }
 status->host_index += phm->u.d.u.data.data_size;
}
