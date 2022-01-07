
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
typedef scalar_t__ u16 ;
struct TYPE_4__ {scalar_t__ adapter_type; scalar_t__ adapter_index; } ;
struct TYPE_3__ {TYPE_2__ s; } ;
struct hpi_response {scalar_t__ error; TYPE_1__ u; } ;
struct hpi_message {scalar_t__ obj_index; } ;


 int HPI_OBJ_SUBSYSTEM ;
 int HPI_SUBSYS_GET_ADAPTER ;
 int hpi_init_message_response (struct hpi_message*,struct hpi_response*,int ,int ) ;
 int hpi_send_recv (struct hpi_message*,struct hpi_response*) ;

u16 hpi_subsys_get_adapter(int iterator, u32 *padapter_index,
 u16 *pw_adapter_type)
{
 struct hpi_message hm;
 struct hpi_response hr;
 hpi_init_message_response(&hm, &hr, HPI_OBJ_SUBSYSTEM,
  HPI_SUBSYS_GET_ADAPTER);
 hm.obj_index = (u16)iterator;
 hpi_send_recv(&hm, &hr);
 *padapter_index = (int)hr.u.s.adapter_index;
 *pw_adapter_type = hr.u.s.adapter_type;

 return hr.error;
}
