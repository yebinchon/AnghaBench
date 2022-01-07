
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u32 ;
typedef scalar_t__ u16 ;
struct TYPE_5__ {int data_available; } ;
struct TYPE_6__ {TYPE_1__ stream_info; } ;
struct TYPE_7__ {TYPE_2__ u; } ;
struct TYPE_8__ {TYPE_3__ d; } ;
struct hpi_response {scalar_t__ error; TYPE_4__ u; } ;
struct hpi_message {int obj_index; int adapter_index; } ;
struct hpi_anc_frame {int dummy; } ;


 scalar_t__ HPI_ERROR_INVALID_HANDLE ;
 int HPI_OBJ_OSTREAM ;
 int HPI_OSTREAM_ANC_GET_INFO ;
 scalar_t__ hpi_handle_indexes (int,int *,int *) ;
 int hpi_init_message_response (struct hpi_message*,struct hpi_response*,int ,int ) ;
 int hpi_send_recv (struct hpi_message*,struct hpi_response*) ;

u16 hpi_outstream_ancillary_get_info(u32 h_outstream, u32 *pframes_available)
{
 struct hpi_message hm;
 struct hpi_response hr;

 hpi_init_message_response(&hm, &hr, HPI_OBJ_OSTREAM,
  HPI_OSTREAM_ANC_GET_INFO);
 if (hpi_handle_indexes(h_outstream, &hm.adapter_index, &hm.obj_index))
  return HPI_ERROR_INVALID_HANDLE;
 hpi_send_recv(&hm, &hr);
 if (hr.error == 0) {
  if (pframes_available)
   *pframes_available =
    hr.u.d.u.stream_info.data_available /
    sizeof(struct hpi_anc_frame);
 }
 return hr.error;
}
