
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_us16x08_meter_store {int comp_active_index; int comp_index; TYPE_1__* comp_store; } ;
struct TYPE_2__ {int ** val; } ;


 size_t COMP_STORE_IDX (int ) ;
 int SND_US16X08_ID_COMP_SWITCH ;
 size_t SND_US16X08_MAX_CHANNELS ;

__attribute__((used)) static int snd_get_meter_comp_index(struct snd_us16x08_meter_store *store)
{
 int ret;


 if (store->comp_active_index) {

  if (store->comp_active_index & 0x20) {

   if (store->comp_index -
    store->comp_active_index > 1)
    store->comp_index =
    store->comp_active_index;

   ret = store->comp_index++ & 0x1F;
  } else {

   ret = store->comp_active_index;
  }
 } else {

  while (!store->comp_store->val[
   COMP_STORE_IDX(SND_US16X08_ID_COMP_SWITCH)]
   [store->comp_index - 1]
   && store->comp_index <= SND_US16X08_MAX_CHANNELS) {
   store->comp_index++;
  }
  ret = store->comp_index++;
  if (store->comp_index > SND_US16X08_MAX_CHANNELS)
   store->comp_index = 1;
 }
 return ret;
}
