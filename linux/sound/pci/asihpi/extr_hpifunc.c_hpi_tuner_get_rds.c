
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int u32 ;
typedef int u16 ;
struct TYPE_9__ {int bLER; int * data; } ;
struct TYPE_10__ {TYPE_3__ rds; } ;
struct TYPE_11__ {TYPE_4__ tuner; } ;
struct TYPE_12__ {TYPE_5__ cu; } ;
struct hpi_response {int error; TYPE_6__ u; } ;
struct TYPE_7__ {int attribute; } ;
struct TYPE_8__ {TYPE_1__ c; } ;
struct hpi_message {TYPE_2__ u; int obj_index; int adapter_index; } ;


 int HPI_CONTROL_GET_STATE ;
 int HPI_ERROR_INVALID_HANDLE ;
 int HPI_OBJ_CONTROL ;
 int HPI_TUNER_RDS ;
 scalar_t__ hpi_handle_indexes (int ,int *,int *) ;
 int hpi_init_message_response (struct hpi_message*,struct hpi_response*,int ,int ) ;
 int hpi_send_recv (struct hpi_message*,struct hpi_response*) ;

u16 hpi_tuner_get_rds(u32 h_control, char *p_data)
{
 struct hpi_message hm;
 struct hpi_response hr;

 hpi_init_message_response(&hm, &hr, HPI_OBJ_CONTROL,
  HPI_CONTROL_GET_STATE);
 if (hpi_handle_indexes(h_control, &hm.adapter_index, &hm.obj_index))
  return HPI_ERROR_INVALID_HANDLE;
 hm.u.c.attribute = HPI_TUNER_RDS;
 hpi_send_recv(&hm, &hr);
 if (p_data) {
  *(u32 *)&p_data[0] = hr.u.cu.tuner.rds.data[0];
  *(u32 *)&p_data[4] = hr.u.cu.tuner.rds.data[1];
  *(u32 *)&p_data[8] = hr.u.cu.tuner.rds.bLER;
 }
 return hr.error;
}
