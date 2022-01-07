
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
typedef int u16 ;
struct hpi_response {int error; } ;
struct TYPE_3__ {int param1; int param2; short* an_log_value; int attribute; } ;
struct TYPE_4__ {TYPE_1__ c; } ;
struct hpi_message {TYPE_2__ u; int obj_index; int adapter_index; } ;


 int HPI_CONTROL_SET_STATE ;
 int HPI_EQUALIZER_FILTER ;
 int HPI_ERROR_INVALID_HANDLE ;
 int HPI_OBJ_CONTROL ;
 scalar_t__ hpi_handle_indexes (int,int *,int *) ;
 int hpi_init_message_response (struct hpi_message*,struct hpi_response*,int ,int ) ;
 int hpi_send_recv (struct hpi_message*,struct hpi_response*) ;

u16 hpi_parametric_eq_set_band(u32 h_control, u16 index, u16 type,
 u32 frequency_hz, short q100, short gain0_01dB)
{
 struct hpi_message hm;
 struct hpi_response hr;

 hpi_init_message_response(&hm, &hr, HPI_OBJ_CONTROL,
  HPI_CONTROL_SET_STATE);
 if (hpi_handle_indexes(h_control, &hm.adapter_index, &hm.obj_index))
  return HPI_ERROR_INVALID_HANDLE;

 hm.u.c.param1 = frequency_hz;
 hm.u.c.param2 = (index & 0xFFFFL) + ((u32)type << 16);
 hm.u.c.an_log_value[0] = gain0_01dB;
 hm.u.c.an_log_value[1] = q100;
 hm.u.c.attribute = HPI_EQUALIZER_FILTER;

 hpi_send_recv(&hm, &hr);

 return hr.error;
}
