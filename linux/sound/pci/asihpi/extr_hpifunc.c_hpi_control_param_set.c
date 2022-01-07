
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
typedef int u16 ;
struct hpi_response {int error; } ;
struct TYPE_3__ {int param2; int param1; int attribute; } ;
struct TYPE_4__ {TYPE_1__ c; } ;
struct hpi_message {TYPE_2__ u; int obj_index; int adapter_index; } ;


 int HPI_CONTROL_SET_STATE ;
 int HPI_ERROR_INVALID_HANDLE ;
 int HPI_OBJ_CONTROL ;
 scalar_t__ hpi_handle_indexes (int const,int *,int *) ;
 int hpi_init_message_response (struct hpi_message*,struct hpi_response*,int ,int ) ;
 int hpi_send_recv (struct hpi_message*,struct hpi_response*) ;

__attribute__((used)) static
u16 hpi_control_param_set(const u32 h_control, const u16 attrib,
 const u32 param1, const u32 param2)
{
 struct hpi_message hm;
 struct hpi_response hr;

 hpi_init_message_response(&hm, &hr, HPI_OBJ_CONTROL,
  HPI_CONTROL_SET_STATE);
 if (hpi_handle_indexes(h_control, &hm.adapter_index, &hm.obj_index))
  return HPI_ERROR_INVALID_HANDLE;
 hm.u.c.attribute = attrib;
 hm.u.c.param1 = param1;
 hm.u.c.param2 = param2;
 hpi_send_recv(&hm, &hr);
 return hr.error;
}
