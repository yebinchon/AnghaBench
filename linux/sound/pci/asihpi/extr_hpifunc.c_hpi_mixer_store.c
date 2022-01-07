
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
typedef int u16 ;
struct hpi_response {int error; } ;
struct TYPE_4__ {int command; int index; } ;
struct TYPE_6__ {TYPE_1__ store; } ;
struct TYPE_5__ {TYPE_3__ mx; } ;
struct hpi_message {TYPE_2__ u; int adapter_index; } ;
typedef enum HPI_MIXER_STORE_COMMAND { ____Placeholder_HPI_MIXER_STORE_COMMAND } HPI_MIXER_STORE_COMMAND ;


 int HPI_ERROR_INVALID_HANDLE ;
 int HPI_MIXER_STORE ;
 int HPI_OBJ_MIXER ;
 scalar_t__ hpi_handle_indexes (int ,int *,int *) ;
 int hpi_init_message_response (struct hpi_message*,struct hpi_response*,int ,int ) ;
 int hpi_send_recv (struct hpi_message*,struct hpi_response*) ;

u16 hpi_mixer_store(u32 h_mixer, enum HPI_MIXER_STORE_COMMAND command,
 u16 index)
{
 struct hpi_message hm;
 struct hpi_response hr;
 hpi_init_message_response(&hm, &hr, HPI_OBJ_MIXER, HPI_MIXER_STORE);
 if (hpi_handle_indexes(h_mixer, &hm.adapter_index, ((void*)0)))
  return HPI_ERROR_INVALID_HANDLE;
 hm.u.mx.store.command = command;
 hm.u.mx.store.index = index;
 hpi_send_recv(&hm, &hr);
 return hr.error;
}
