
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef void* u16 ;
struct hpi_response {int dummy; } ;
struct hpi_message {int function; void* obj_index; void* adapter_index; } ;
struct TYPE_4__ {void* h_owner; scalar_t__ open_flag; } ;
struct TYPE_3__ {void* h_owner; scalar_t__ open_flag; } ;


 int DEBUG ;
 void* HPIMSGX_ALLADAPTERS ;
 int HPI_DEBUG_LOG (int ,char*,int,int) ;
 int HPI_ISTREAM_GROUP_RESET ;
 int HPI_ISTREAM_HOSTBUFFER_FREE ;
 int HPI_ISTREAM_RESET ;
 int HPI_MAX_ADAPTERS ;
 int HPI_MAX_STREAMS ;
 int HPI_OBJ_ISTREAM ;
 int HPI_OBJ_OSTREAM ;
 int HPI_OSTREAM_GROUP_RESET ;
 int HPI_OSTREAM_HOSTBUFFER_FREE ;
 int HPI_OSTREAM_RESET ;
 int hpi_init_message_response (struct hpi_message*,struct hpi_response*,int ,int ) ;
 int hw_entry_point (struct hpi_message*,struct hpi_response*) ;
 TYPE_2__** instream_user_open ;
 TYPE_1__** outstream_user_open ;

__attribute__((used)) static void HPIMSGX__cleanup(u16 adapter_index, void *h_owner)
{
 int i, adapter, adapter_limit;

 if (!h_owner)
  return;

 if (adapter_index == HPIMSGX_ALLADAPTERS) {
  adapter = 0;
  adapter_limit = HPI_MAX_ADAPTERS;
 } else {
  adapter = adapter_index;
  adapter_limit = adapter + 1;
 }

 for (; adapter < adapter_limit; adapter++) {

  for (i = 0; i < HPI_MAX_STREAMS; i++) {
   if (h_owner ==
    outstream_user_open[adapter][i].h_owner) {
    struct hpi_message hm;
    struct hpi_response hr;

    HPI_DEBUG_LOG(DEBUG,
     "Close adapter %d ostream %d\n",
     adapter, i);

    hpi_init_message_response(&hm, &hr,
     HPI_OBJ_OSTREAM, HPI_OSTREAM_RESET);
    hm.adapter_index = (u16)adapter;
    hm.obj_index = (u16)i;
    hw_entry_point(&hm, &hr);

    hm.function = HPI_OSTREAM_HOSTBUFFER_FREE;
    hw_entry_point(&hm, &hr);

    hm.function = HPI_OSTREAM_GROUP_RESET;
    hw_entry_point(&hm, &hr);

    outstream_user_open[adapter][i].open_flag = 0;
    outstream_user_open[adapter][i].h_owner =
     ((void*)0);
   }
   if (h_owner == instream_user_open[adapter][i].h_owner) {
    struct hpi_message hm;
    struct hpi_response hr;

    HPI_DEBUG_LOG(DEBUG,
     "Close adapter %d istream %d\n",
     adapter, i);

    hpi_init_message_response(&hm, &hr,
     HPI_OBJ_ISTREAM, HPI_ISTREAM_RESET);
    hm.adapter_index = (u16)adapter;
    hm.obj_index = (u16)i;
    hw_entry_point(&hm, &hr);

    hm.function = HPI_ISTREAM_HOSTBUFFER_FREE;
    hw_entry_point(&hm, &hr);

    hm.function = HPI_ISTREAM_GROUP_RESET;
    hw_entry_point(&hm, &hr);

    instream_user_open[adapter][i].open_flag = 0;
    instream_user_open[adapter][i].h_owner = ((void*)0);
   }
  }
 }
}
