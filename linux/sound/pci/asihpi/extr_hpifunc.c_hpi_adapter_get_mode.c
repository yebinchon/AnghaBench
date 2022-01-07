
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
typedef int u16 ;
struct TYPE_4__ {int adapter_mode; } ;
struct TYPE_5__ {TYPE_1__ mode; } ;
struct TYPE_6__ {TYPE_2__ ax; } ;
struct hpi_response {int error; TYPE_3__ u; } ;
struct hpi_message {int adapter_index; } ;


 int HPI_ADAPTER_GET_MODE ;
 int HPI_OBJ_ADAPTER ;
 int hpi_init_message_response (struct hpi_message*,struct hpi_response*,int ,int ) ;
 int hpi_send_recv (struct hpi_message*,struct hpi_response*) ;

u16 hpi_adapter_get_mode(u16 adapter_index, u32 *padapter_mode)
{
 struct hpi_message hm;
 struct hpi_response hr;
 hpi_init_message_response(&hm, &hr, HPI_OBJ_ADAPTER,
  HPI_ADAPTER_GET_MODE);
 hm.adapter_index = adapter_index;
 hpi_send_recv(&hm, &hr);
 if (padapter_mode)
  *padapter_mode = hr.u.ax.mode.adapter_mode;
 return hr.error;
}
