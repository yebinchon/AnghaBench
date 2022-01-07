
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef void* u16 ;
struct hpi_response {void* error; } ;
struct TYPE_6__ {void* parameter2; void* parameter1; void* property; } ;
struct TYPE_4__ {TYPE_3__ property_set; } ;
struct TYPE_5__ {TYPE_1__ ax; } ;
struct hpi_message {TYPE_2__ u; void* adapter_index; } ;


 int HPI_ADAPTER_SET_PROPERTY ;
 int HPI_OBJ_ADAPTER ;
 int hpi_init_message_response (struct hpi_message*,struct hpi_response*,int ,int ) ;
 int hpi_send_recv (struct hpi_message*,struct hpi_response*) ;

u16 hpi_adapter_set_property(u16 adapter_index, u16 property, u16 parameter1,
 u16 parameter2)
{
 struct hpi_message hm;
 struct hpi_response hr;
 hpi_init_message_response(&hm, &hr, HPI_OBJ_ADAPTER,
  HPI_ADAPTER_SET_PROPERTY);
 hm.adapter_index = adapter_index;
 hm.u.ax.property_set.property = property;
 hm.u.ax.property_set.parameter1 = parameter1;
 hm.u.ax.property_set.parameter2 = parameter2;

 hpi_send_recv(&hm, &hr);

 return hr.error;
}
