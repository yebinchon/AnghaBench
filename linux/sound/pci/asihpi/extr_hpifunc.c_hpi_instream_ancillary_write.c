
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
typedef int u16 ;
struct hpi_response {int error; } ;
struct TYPE_5__ {int data_size; int * pb_data; } ;
struct TYPE_6__ {TYPE_1__ data; } ;
struct TYPE_7__ {TYPE_2__ u; } ;
struct TYPE_8__ {TYPE_3__ d; } ;
struct hpi_message {TYPE_4__ u; int obj_index; int adapter_index; } ;
struct hpi_anc_frame {int dummy; } ;


 int HPI_ERROR_INVALID_DATASIZE ;
 int HPI_ERROR_INVALID_HANDLE ;
 int HPI_ISTREAM_ANC_WRITE ;
 int HPI_OBJ_ISTREAM ;
 scalar_t__ hpi_handle_indexes (int,int *,int *) ;
 int hpi_init_message_response (struct hpi_message*,struct hpi_response*,int ,int ) ;
 int hpi_send_recv (struct hpi_message*,struct hpi_response*) ;

u16 hpi_instream_ancillary_write(u32 h_instream,
 const struct hpi_anc_frame *p_anc_frame_buffer,
 u32 anc_frame_buffer_size_in_bytes,
 u32 number_of_ancillary_frames_to_write)
{
 struct hpi_message hm;
 struct hpi_response hr;

 hpi_init_message_response(&hm, &hr, HPI_OBJ_ISTREAM,
  HPI_ISTREAM_ANC_WRITE);
 if (hpi_handle_indexes(h_instream, &hm.adapter_index, &hm.obj_index))
  return HPI_ERROR_INVALID_HANDLE;
 hm.u.d.u.data.pb_data = (u8 *)p_anc_frame_buffer;
 hm.u.d.u.data.data_size =
  number_of_ancillary_frames_to_write *
  sizeof(struct hpi_anc_frame);
 if (hm.u.d.u.data.data_size <= anc_frame_buffer_size_in_bytes)
  hpi_send_recv(&hm, &hr);
 else
  hr.error = HPI_ERROR_INVALID_DATASIZE;
 return hr.error;
}
