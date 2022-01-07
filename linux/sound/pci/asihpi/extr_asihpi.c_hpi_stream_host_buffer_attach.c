
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef void* u32 ;
typedef int u16 ;
struct hpi_response {int error; } ;
struct TYPE_5__ {int command; void* pci_address; void* buffer_size; } ;
struct TYPE_6__ {TYPE_1__ buffer; } ;
struct TYPE_7__ {TYPE_2__ u; } ;
struct TYPE_8__ {TYPE_3__ d; } ;
struct hpi_message {TYPE_4__ u; int obj_index; int adapter_index; } ;


 int HPI_BUFFER_CMD_INTERNAL_GRANTADAPTER ;
 int HPI_ERROR_INVALID_OBJ ;
 int HPI_ISTREAM_HOSTBUFFER_ALLOC ;
 unsigned int HPI_OBJ_OSTREAM ;
 int HPI_OSTREAM_HOSTBUFFER_ALLOC ;
 unsigned int hpi_handle_object (void*) ;
 int hpi_handle_to_indexes (void*,int *,int *) ;
 int hpi_init_message_response (struct hpi_message*,struct hpi_response*,unsigned int,int ) ;
 int hpi_send_recv (struct hpi_message*,struct hpi_response*) ;

__attribute__((used)) static u16 hpi_stream_host_buffer_attach(
 u32 h_stream,
 u32 size_in_bytes,
 u32 pci_address
)
{
 struct hpi_message hm;
 struct hpi_response hr;
 unsigned int obj = hpi_handle_object(h_stream);

 if (!h_stream)
  return HPI_ERROR_INVALID_OBJ;
 hpi_init_message_response(&hm, &hr, obj,
   obj == HPI_OBJ_OSTREAM ?
    HPI_OSTREAM_HOSTBUFFER_ALLOC :
    HPI_ISTREAM_HOSTBUFFER_ALLOC);

 hpi_handle_to_indexes(h_stream, &hm.adapter_index,
    &hm.obj_index);

 hm.u.d.u.buffer.buffer_size = size_in_bytes;
 hm.u.d.u.buffer.pci_address = pci_address;
 hm.u.d.u.buffer.command = HPI_BUFFER_CMD_INTERNAL_GRANTADAPTER;
 hpi_send_recv(&hm, &hr);
 return hr.error;
}
