
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
typedef void* u16 ;
struct hpi_response {scalar_t__ error; } ;
struct hpi_message {void* obj_index; void* adapter_index; } ;


 int HPI_OBJ_OSTREAM ;
 int HPI_OSTREAM_OPEN ;
 scalar_t__ hpi_indexes_to_handle (int ,void*,void*) ;
 int hpi_init_message_response (struct hpi_message*,struct hpi_response*,int ,int ) ;
 int hpi_send_recv (struct hpi_message*,struct hpi_response*) ;

u16 hpi_outstream_open(u16 adapter_index, u16 outstream_index,
 u32 *ph_outstream)
{
 struct hpi_message hm;
 struct hpi_response hr;
 hpi_init_message_response(&hm, &hr, HPI_OBJ_OSTREAM,
  HPI_OSTREAM_OPEN);
 hm.adapter_index = adapter_index;
 hm.obj_index = outstream_index;

 hpi_send_recv(&hm, &hr);

 if (hr.error == 0)
  *ph_outstream =
   hpi_indexes_to_handle(HPI_OBJ_OSTREAM, adapter_index,
   outstream_index);
 else
  *ph_outstream = 0;
 return hr.error;
}
