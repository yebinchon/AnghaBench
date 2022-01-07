
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
typedef int u16 ;
struct TYPE_4__ {int serial_number; int version; int num_instreams; int num_outstreams; int adapter_type; } ;
struct TYPE_5__ {TYPE_1__ info; } ;
struct TYPE_6__ {TYPE_2__ ax; } ;
struct hpi_response {int error; TYPE_3__ u; } ;
struct hpi_message {int adapter_index; } ;


 int HPI_ADAPTER_GET_INFO ;
 int HPI_OBJ_ADAPTER ;
 int hpi_init_message_response (struct hpi_message*,struct hpi_response*,int ,int ) ;
 int hpi_send_recv (struct hpi_message*,struct hpi_response*) ;

u16 hpi_adapter_get_info(u16 adapter_index, u16 *pw_num_outstreams,
 u16 *pw_num_instreams, u16 *pw_version, u32 *pserial_number,
 u16 *pw_adapter_type)
{
 struct hpi_message hm;
 struct hpi_response hr;
 hpi_init_message_response(&hm, &hr, HPI_OBJ_ADAPTER,
  HPI_ADAPTER_GET_INFO);
 hm.adapter_index = adapter_index;

 hpi_send_recv(&hm, &hr);

 *pw_adapter_type = hr.u.ax.info.adapter_type;
 *pw_num_outstreams = hr.u.ax.info.num_outstreams;
 *pw_num_instreams = hr.u.ax.info.num_instreams;
 *pw_version = hr.u.ax.info.version;
 *pserial_number = hr.u.ax.info.serial_number;
 return hr.error;
}
