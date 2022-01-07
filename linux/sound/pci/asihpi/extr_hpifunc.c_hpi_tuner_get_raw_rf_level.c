
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int u32 ;
typedef int u16 ;
struct TYPE_6__ {short s_level; } ;
struct TYPE_7__ {TYPE_1__ tuner; } ;
struct TYPE_8__ {TYPE_2__ cu; } ;
struct hpi_response {int error; TYPE_3__ u; } ;
struct TYPE_9__ {int attribute; } ;
struct TYPE_10__ {TYPE_4__ cu; } ;
struct hpi_message {TYPE_5__ u; int obj_index; int adapter_index; } ;


 int HPI_CONTROL_GET_STATE ;
 int HPI_ERROR_INVALID_HANDLE ;
 int HPI_OBJ_CONTROL ;
 int HPI_TUNER_LEVEL_RAW ;
 scalar_t__ hpi_handle_indexes (int ,int *,int *) ;
 int hpi_init_message_response (struct hpi_message*,struct hpi_response*,int ,int ) ;
 int hpi_send_recv (struct hpi_message*,struct hpi_response*) ;

u16 hpi_tuner_get_raw_rf_level(u32 h_control, short *pw_level)
{
 struct hpi_message hm;
 struct hpi_response hr;

 hpi_init_message_response(&hm, &hr, HPI_OBJ_CONTROL,
  HPI_CONTROL_GET_STATE);
 if (hpi_handle_indexes(h_control, &hm.adapter_index, &hm.obj_index))
  return HPI_ERROR_INVALID_HANDLE;
 hm.u.cu.attribute = HPI_TUNER_LEVEL_RAW;
 hpi_send_recv(&hm, &hr);
 if (pw_level)
  *pw_level = hr.u.cu.tuner.s_level;
 return hr.error;
}
