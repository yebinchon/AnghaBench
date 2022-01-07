
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
typedef scalar_t__ u16 ;
struct hpi_response {scalar_t__ error; } ;
struct hpi_message {scalar_t__ adapter_index; } ;


 int HPI_MIXER_OPEN ;
 int HPI_OBJ_MIXER ;
 scalar_t__ hpi_indexes_to_handle (int ,scalar_t__,int ) ;
 int hpi_init_message_response (struct hpi_message*,struct hpi_response*,int ,int ) ;
 int hpi_send_recv (struct hpi_message*,struct hpi_response*) ;

u16 hpi_mixer_open(u16 adapter_index, u32 *ph_mixer)
{
 struct hpi_message hm;
 struct hpi_response hr;
 hpi_init_message_response(&hm, &hr, HPI_OBJ_MIXER, HPI_MIXER_OPEN);
 hm.adapter_index = adapter_index;

 hpi_send_recv(&hm, &hr);

 if (hr.error == 0)
  *ph_mixer =
   hpi_indexes_to_handle(HPI_OBJ_MIXER, adapter_index,
   0);
 else
  *ph_mixer = 0;
 return hr.error;
}
