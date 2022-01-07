
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct hpi_response {int dummy; } ;
struct TYPE_8__ {scalar_t__ command; } ;
struct TYPE_5__ {TYPE_4__ buffer; } ;
struct TYPE_6__ {TYPE_1__ u; } ;
struct TYPE_7__ {TYPE_2__ d; } ;
struct hpi_message {size_t obj_index; TYPE_3__ u; } ;
struct hpi_hw_obj {int * outstream_host_buffers; scalar_t__* outstream_host_buffer_size; } ;
struct hpi_adapter_obj {struct hpi_hw_obj* priv; } ;


 scalar_t__ HPI_BUFFER_CMD_EXTERNAL ;
 scalar_t__ HPI_BUFFER_CMD_INTERNAL_FREE ;
 scalar_t__ HPI_BUFFER_CMD_INTERNAL_REVOKEADAPTER ;
 int HPI_OBJ_OSTREAM ;
 int HPI_OSTREAM_HOSTBUFFER_FREE ;
 int hpi_init_response (struct hpi_response*,int ,int ,int ) ;
 int hpios_locked_mem_free (int *) ;
 int hw_message (struct hpi_adapter_obj*,struct hpi_message*,struct hpi_response*) ;

__attribute__((used)) static void outstream_host_buffer_free(struct hpi_adapter_obj *pao,
 struct hpi_message *phm, struct hpi_response *phr)
{
 struct hpi_hw_obj *phw = pao->priv;
 u32 command = phm->u.d.u.buffer.command;

 if (phw->outstream_host_buffer_size[phm->obj_index]) {
  if (command == HPI_BUFFER_CMD_EXTERNAL
   || command == HPI_BUFFER_CMD_INTERNAL_REVOKEADAPTER) {
   phw->outstream_host_buffer_size[phm->obj_index] = 0;
   hw_message(pao, phm, phr);

  }
  if (command == HPI_BUFFER_CMD_EXTERNAL
   || command == HPI_BUFFER_CMD_INTERNAL_FREE)
   hpios_locked_mem_free(&phw->outstream_host_buffers
    [phm->obj_index]);
 }


 else
  hpi_init_response(phr, HPI_OBJ_OSTREAM,
   HPI_OSTREAM_HOSTBUFFER_FREE, 0);

}
