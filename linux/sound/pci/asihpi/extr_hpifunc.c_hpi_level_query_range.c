
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
struct TYPE_7__ {short* an_log_value; scalar_t__ param1; } ;
struct TYPE_8__ {TYPE_3__ c; } ;
struct hpi_response {scalar_t__ error; TYPE_4__ u; } ;
struct TYPE_5__ {int attribute; } ;
struct TYPE_6__ {TYPE_1__ c; } ;
struct hpi_message {TYPE_2__ u; int obj_index; int adapter_index; } ;


 int HPI_CONTROL_GET_STATE ;
 scalar_t__ HPI_ERROR_INVALID_HANDLE ;
 int HPI_LEVEL_RANGE ;
 int HPI_OBJ_CONTROL ;
 scalar_t__ hpi_handle_indexes (int ,int *,int *) ;
 int hpi_init_message_response (struct hpi_message*,struct hpi_response*,int ,int ) ;
 int hpi_send_recv (struct hpi_message*,struct hpi_response*) ;

u16 hpi_level_query_range(u32 h_control, short *min_gain_01dB,
 short *max_gain_01dB, short *step_gain_01dB)
{
 struct hpi_message hm;
 struct hpi_response hr;

 hpi_init_message_response(&hm, &hr, HPI_OBJ_CONTROL,
  HPI_CONTROL_GET_STATE);
 if (hpi_handle_indexes(h_control, &hm.adapter_index, &hm.obj_index))
  return HPI_ERROR_INVALID_HANDLE;
 hm.u.c.attribute = HPI_LEVEL_RANGE;

 hpi_send_recv(&hm, &hr);
 if (hr.error) {
  hr.u.c.an_log_value[0] = 0;
  hr.u.c.an_log_value[1] = 0;
  hr.u.c.param1 = 0;
 }
 if (min_gain_01dB)
  *min_gain_01dB = hr.u.c.an_log_value[0];
 if (max_gain_01dB)
  *max_gain_01dB = hr.u.c.an_log_value[1];
 if (step_gain_01dB)
  *step_gain_01dB = (short)hr.u.c.param1;
 return hr.error;
}
