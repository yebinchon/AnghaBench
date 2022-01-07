
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct hpi_response {scalar_t__ error; } ;
struct hpi_message {size_t adapter_index; size_t obj_index; } ;
struct TYPE_2__ {void* h_owner; scalar_t__ open_flag; } ;


 int HPI_DEBUG_LOG (int ,char*,void*,size_t,size_t,void*) ;
 scalar_t__ HPI_ERROR_OBJ_NOT_OPEN ;
 int HPI_ISTREAM_CLOSE ;
 int HPI_ISTREAM_RESET ;
 int HPI_OBJ_ISTREAM ;
 int WARNING ;
 int hpi_init_message_response (struct hpi_message*,struct hpi_response*,int ,int ) ;
 int hpi_init_response (struct hpi_response*,int ,int ,int ) ;
 int hpios_msgxlock_lock (int *) ;
 int hpios_msgxlock_unlock (int *) ;
 int hw_entry_point (struct hpi_message*,struct hpi_response*) ;
 TYPE_1__** instream_user_open ;
 int msgx_lock ;

__attribute__((used)) static void instream_close(struct hpi_message *phm, struct hpi_response *phr,
 void *h_owner)
{

 struct hpi_message hm;
 struct hpi_response hr;

 hpi_init_response(phr, HPI_OBJ_ISTREAM, HPI_ISTREAM_CLOSE, 0);

 hpios_msgxlock_lock(&msgx_lock);
 if (h_owner ==
  instream_user_open[phm->adapter_index][phm->
   obj_index].h_owner) {



  instream_user_open[phm->adapter_index][phm->
   obj_index].h_owner = ((void*)0);
  hpios_msgxlock_unlock(&msgx_lock);

  hpi_init_message_response(&hm, &hr, HPI_OBJ_ISTREAM,
   HPI_ISTREAM_RESET);
  hm.adapter_index = phm->adapter_index;
  hm.obj_index = phm->obj_index;
  hw_entry_point(&hm, &hr);
  hpios_msgxlock_lock(&msgx_lock);
  if (hr.error) {
   instream_user_open[phm->adapter_index][phm->
    obj_index].h_owner = h_owner;
   phr->error = hr.error;
  } else {
   instream_user_open[phm->adapter_index][phm->
    obj_index].open_flag = 0;
   instream_user_open[phm->adapter_index][phm->
    obj_index].h_owner = ((void*)0);
  }
 } else {
  HPI_DEBUG_LOG(WARNING,
   "%p trying to close %d instream %d owned by %p\n",
   h_owner, phm->adapter_index, phm->obj_index,
   instream_user_open[phm->adapter_index][phm->
    obj_index].h_owner);
  phr->error = HPI_ERROR_OBJ_NOT_OPEN;
 }
 hpios_msgxlock_unlock(&msgx_lock);
}
