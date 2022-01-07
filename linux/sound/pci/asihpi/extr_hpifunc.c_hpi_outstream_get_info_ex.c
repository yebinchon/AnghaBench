
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u32 ;
typedef int u16 ;
struct TYPE_5__ {int auxiliary_data_available; int samples_transferred; int data_available; int buffer_size; int state; } ;
struct TYPE_6__ {TYPE_1__ stream_info; } ;
struct TYPE_7__ {TYPE_2__ u; } ;
struct TYPE_8__ {TYPE_3__ d; } ;
struct hpi_response {int error; TYPE_4__ u; } ;
struct hpi_message {int obj_index; int adapter_index; } ;


 int HPI_ERROR_INVALID_HANDLE ;
 int HPI_OBJ_OSTREAM ;
 int HPI_OSTREAM_GET_INFO ;
 scalar_t__ hpi_handle_indexes (int ,int *,int *) ;
 int hpi_init_message_response (struct hpi_message*,struct hpi_response*,int ,int ) ;
 int hpi_send_recv (struct hpi_message*,struct hpi_response*) ;

u16 hpi_outstream_get_info_ex(u32 h_outstream, u16 *pw_state,
 u32 *pbuffer_size, u32 *pdata_to_play, u32 *psamples_played,
 u32 *pauxiliary_data_to_play)
{
 struct hpi_message hm;
 struct hpi_response hr;
 hpi_init_message_response(&hm, &hr, HPI_OBJ_OSTREAM,
  HPI_OSTREAM_GET_INFO);
 if (hpi_handle_indexes(h_outstream, &hm.adapter_index, &hm.obj_index))
  return HPI_ERROR_INVALID_HANDLE;

 hpi_send_recv(&hm, &hr);

 if (pw_state)
  *pw_state = hr.u.d.u.stream_info.state;
 if (pbuffer_size)
  *pbuffer_size = hr.u.d.u.stream_info.buffer_size;
 if (pdata_to_play)
  *pdata_to_play = hr.u.d.u.stream_info.data_available;
 if (psamples_played)
  *psamples_played = hr.u.d.u.stream_info.samples_transferred;
 if (pauxiliary_data_to_play)
  *pauxiliary_data_to_play =
   hr.u.d.u.stream_info.auxiliary_data_available;
 return hr.error;
}
