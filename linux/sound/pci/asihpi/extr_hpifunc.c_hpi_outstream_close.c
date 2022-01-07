
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;
struct hpi_response {int error; } ;
struct hpi_message {int obj_index; int adapter_index; } ;


 int HPI_ERROR_INVALID_HANDLE ;
 int HPI_OBJ_OSTREAM ;
 int HPI_OSTREAM_CLOSE ;
 int HPI_OSTREAM_GROUP_RESET ;
 int HPI_OSTREAM_HOSTBUFFER_FREE ;
 scalar_t__ hpi_handle_indexes (int ,int *,int *) ;
 int hpi_init_message_response (struct hpi_message*,struct hpi_response*,int ,int ) ;
 int hpi_send_recv (struct hpi_message*,struct hpi_response*) ;

u16 hpi_outstream_close(u32 h_outstream)
{
 struct hpi_message hm;
 struct hpi_response hr;

 hpi_init_message_response(&hm, &hr, HPI_OBJ_OSTREAM,
  HPI_OSTREAM_HOSTBUFFER_FREE);
 if (hpi_handle_indexes(h_outstream, &hm.adapter_index, &hm.obj_index))
  return HPI_ERROR_INVALID_HANDLE;

 hpi_send_recv(&hm, &hr);

 hpi_init_message_response(&hm, &hr, HPI_OBJ_OSTREAM,
  HPI_OSTREAM_GROUP_RESET);
 hpi_handle_indexes(h_outstream, &hm.adapter_index, &hm.obj_index);
 hpi_send_recv(&hm, &hr);

 hpi_init_message_response(&hm, &hr, HPI_OBJ_OSTREAM,
  HPI_OSTREAM_CLOSE);
 hpi_handle_indexes(h_outstream, &hm.adapter_index, &hm.obj_index);
 hpi_send_recv(&hm, &hr);

 return hr.error;
}
