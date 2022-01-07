
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
typedef scalar_t__ u16 ;
struct TYPE_5__ {struct hpi_hostbuffer_status* p_status; int * p_buffer; } ;
struct TYPE_6__ {TYPE_1__ hostbuffer_info; } ;
struct TYPE_7__ {TYPE_2__ u; } ;
struct TYPE_8__ {TYPE_3__ d; } ;
struct hpi_response {scalar_t__ error; TYPE_4__ u; } ;
struct hpi_message {int obj_index; int adapter_index; } ;
struct hpi_hostbuffer_status {int dummy; } ;


 scalar_t__ HPI_ERROR_INVALID_HANDLE ;
 int HPI_ISTREAM_HOSTBUFFER_GET_INFO ;
 int HPI_OBJ_ISTREAM ;
 scalar_t__ hpi_handle_indexes (int ,int *,int *) ;
 int hpi_init_message_response (struct hpi_message*,struct hpi_response*,int ,int ) ;
 int hpi_send_recv (struct hpi_message*,struct hpi_response*) ;

u16 hpi_instream_host_buffer_get_info(u32 h_instream, u8 **pp_buffer,
 struct hpi_hostbuffer_status **pp_status)
{
 struct hpi_message hm;
 struct hpi_response hr;

 hpi_init_message_response(&hm, &hr, HPI_OBJ_ISTREAM,
  HPI_ISTREAM_HOSTBUFFER_GET_INFO);
 if (hpi_handle_indexes(h_instream, &hm.adapter_index, &hm.obj_index))
  return HPI_ERROR_INVALID_HANDLE;
 hpi_send_recv(&hm, &hr);

 if (hr.error == 0) {
  if (pp_buffer)
   *pp_buffer = hr.u.d.u.hostbuffer_info.p_buffer;
  if (pp_status)
   *pp_status = hr.u.d.u.hostbuffer_info.p_status;
 }
 return hr.error;
}
