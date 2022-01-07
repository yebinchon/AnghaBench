
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
struct TYPE_6__ {scalar_t__ param2; } ;
struct TYPE_7__ {TYPE_2__ c; } ;
struct hpi_response {scalar_t__ error; TYPE_3__ u; } ;
struct TYPE_8__ {scalar_t__ param1; int attribute; } ;
struct TYPE_5__ {TYPE_4__ c; } ;
struct hpi_message {TYPE_1__ u; int obj_index; int adapter_index; } ;


 int HPI_AESEBURX_USERDATA ;
 int HPI_CONTROL_GET_STATE ;
 scalar_t__ HPI_ERROR_INVALID_HANDLE ;
 int HPI_OBJ_CONTROL ;
 scalar_t__ hpi_handle_indexes (int ,int *,int *) ;
 int hpi_init_message_response (struct hpi_message*,struct hpi_response*,int ,int ) ;
 int hpi_send_recv (struct hpi_message*,struct hpi_response*) ;

u16 hpi_aesebu_receiver_get_user_data(u32 h_control, u16 index, u16 *pw_data)
{
 struct hpi_message hm;
 struct hpi_response hr;
 hpi_init_message_response(&hm, &hr, HPI_OBJ_CONTROL,
  HPI_CONTROL_GET_STATE);
 if (hpi_handle_indexes(h_control, &hm.adapter_index, &hm.obj_index))
  return HPI_ERROR_INVALID_HANDLE;
 hm.u.c.attribute = HPI_AESEBURX_USERDATA;
 hm.u.c.param1 = index;

 hpi_send_recv(&hm, &hr);

 if (pw_data)
  *pw_data = (u16)hr.u.c.param2;
 return hr.error;
}
