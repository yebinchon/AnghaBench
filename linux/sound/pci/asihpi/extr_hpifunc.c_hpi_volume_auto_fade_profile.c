
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
typedef int u16 ;
struct hpi_response {int error; } ;
struct TYPE_3__ {int param2; int param1; int attribute; int an_log_value; } ;
struct TYPE_4__ {TYPE_1__ c; } ;
struct hpi_message {TYPE_2__ u; int obj_index; int adapter_index; } ;


 int HPI_CONTROL_SET_STATE ;
 int HPI_ERROR_INVALID_HANDLE ;
 int HPI_MAX_CHANNELS ;
 int HPI_OBJ_CONTROL ;
 int HPI_VOLUME_AUTOFADE ;
 scalar_t__ hpi_handle_indexes (int ,int *,int *) ;
 int hpi_init_message_response (struct hpi_message*,struct hpi_response*,int ,int ) ;
 int hpi_send_recv (struct hpi_message*,struct hpi_response*) ;
 int memcpy (int ,short*,int) ;

u16 hpi_volume_auto_fade_profile(u32 h_control,
 short an_stop_gain0_01dB[HPI_MAX_CHANNELS], u32 duration_ms,
 u16 profile)
{
 struct hpi_message hm;
 struct hpi_response hr;

 hpi_init_message_response(&hm, &hr, HPI_OBJ_CONTROL,
  HPI_CONTROL_SET_STATE);
 if (hpi_handle_indexes(h_control, &hm.adapter_index, &hm.obj_index))
  return HPI_ERROR_INVALID_HANDLE;

 memcpy(hm.u.c.an_log_value, an_stop_gain0_01dB,
  sizeof(short) * HPI_MAX_CHANNELS);

 hm.u.c.attribute = HPI_VOLUME_AUTOFADE;
 hm.u.c.param1 = duration_ms;
 hm.u.c.param2 = profile;

 hpi_send_recv(&hm, &hr);

 return hr.error;
}
