
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct hpi_response {int error; } ;
struct hpi_message {int adapter_index; } ;


 int HPI_ADAPTER_CLOSE ;
 int HPI_OBJ_ADAPTER ;
 int hpi_init_message_response (struct hpi_message*,struct hpi_response*,int ,int ) ;
 int hpi_send_recv (struct hpi_message*,struct hpi_response*) ;

u16 hpi_adapter_close(u16 adapter_index)
{
 struct hpi_message hm;
 struct hpi_response hr;
 hpi_init_message_response(&hm, &hr, HPI_OBJ_ADAPTER,
  HPI_ADAPTER_CLOSE);
 hm.adapter_index = adapter_index;

 hpi_send_recv(&hm, &hr);

 return hr.error;
}
