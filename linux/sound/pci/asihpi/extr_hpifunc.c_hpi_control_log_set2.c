
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
typedef int u16 ;
struct hpi_response {int error; } ;
struct TYPE_3__ {short* an_log_value; int attribute; } ;
struct TYPE_4__ {TYPE_1__ c; } ;
struct hpi_message {TYPE_2__ u; int obj_index; int adapter_index; } ;


 int HPI_CONTROL_SET_STATE ;
 int HPI_ERROR_INVALID_HANDLE ;
 int HPI_OBJ_CONTROL ;
 scalar_t__ hpi_handle_indexes (int ,int *,int *) ;
 int hpi_init_message_response (struct hpi_message*,struct hpi_response*,int ,int ) ;
 int hpi_send_recv (struct hpi_message*,struct hpi_response*) ;

__attribute__((used)) static u16 hpi_control_log_set2(u32 h_control, u16 attrib, short sv0,
 short sv1)
{
 struct hpi_message hm;
 struct hpi_response hr;

 hpi_init_message_response(&hm, &hr, HPI_OBJ_CONTROL,
  HPI_CONTROL_SET_STATE);
 if (hpi_handle_indexes(h_control, &hm.adapter_index, &hm.obj_index))
  return HPI_ERROR_INVALID_HANDLE;
 hm.u.c.attribute = attrib;
 hm.u.c.an_log_value[0] = sv0;
 hm.u.c.an_log_value[1] = sv1;
 hpi_send_recv(&hm, &hr);
 return hr.error;
}
