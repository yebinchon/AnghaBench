
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;
struct hpi_response {int error; } ;
struct hpi_message {int adapter_index; } ;


 int HPI_ERROR_INVALID_HANDLE ;
 int HPI_MIXER_CLOSE ;
 int HPI_OBJ_MIXER ;
 scalar_t__ hpi_handle_indexes (int ,int *,int *) ;
 int hpi_init_message_response (struct hpi_message*,struct hpi_response*,int ,int ) ;
 int hpi_send_recv (struct hpi_message*,struct hpi_response*) ;

u16 hpi_mixer_close(u32 h_mixer)
{
 struct hpi_message hm;
 struct hpi_response hr;

 hpi_init_message_response(&hm, &hr, HPI_OBJ_MIXER, HPI_MIXER_CLOSE);
 if (hpi_handle_indexes(h_mixer, &hm.adapter_index, ((void*)0)))
  return HPI_ERROR_INVALID_HANDLE;

 hpi_send_recv(&hm, &hr);
 return hr.error;
}
