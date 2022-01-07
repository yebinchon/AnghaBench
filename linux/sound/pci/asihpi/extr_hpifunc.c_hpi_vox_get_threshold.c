
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
struct TYPE_5__ {short* an_log_value; } ;
struct TYPE_6__ {TYPE_1__ c; } ;
struct hpi_response {int error; TYPE_2__ u; } ;
struct TYPE_7__ {int attribute; } ;
struct TYPE_8__ {TYPE_3__ c; } ;
struct hpi_message {TYPE_4__ u; int obj_index; int adapter_index; } ;


 int HPI_CONTROL_GET_STATE ;
 int HPI_ERROR_INVALID_HANDLE ;
 int HPI_OBJ_CONTROL ;
 int HPI_VOX_THRESHOLD ;
 scalar_t__ hpi_handle_indexes (int ,int *,int *) ;
 int hpi_init_message_response (struct hpi_message*,struct hpi_response*,int ,int ) ;
 int hpi_send_recv (struct hpi_message*,struct hpi_response*) ;

u16 hpi_vox_get_threshold(u32 h_control, short *an_gain0_01dB)
{
 struct hpi_message hm;
 struct hpi_response hr;
 hpi_init_message_response(&hm, &hr, HPI_OBJ_CONTROL,
  HPI_CONTROL_GET_STATE);
 if (hpi_handle_indexes(h_control, &hm.adapter_index, &hm.obj_index))
  return HPI_ERROR_INVALID_HANDLE;
 hm.u.c.attribute = HPI_VOX_THRESHOLD;

 hpi_send_recv(&hm, &hr);

 *an_gain0_01dB = hr.u.c.an_log_value[0];

 return hr.error;
}
