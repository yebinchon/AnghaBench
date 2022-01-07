
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u8 ;
struct probe_resp {size_t* csa_counter_offsets; int * data; } ;
struct TYPE_6__ {int type; } ;
struct TYPE_4__ {int probe_resp; } ;
struct TYPE_5__ {TYPE_1__ ap; } ;
struct ieee80211_sub_if_data {TYPE_3__ vif; TYPE_2__ u; } ;
struct beacon_data {size_t tail_len; size_t head_len; size_t* csa_counter_offsets; int * head; int * tail; int csa_current_counter; } ;


 int IEEE80211_MAX_CSA_COUNTERS_NUM ;



 scalar_t__ WARN_ON_ONCE (int) ;
 struct probe_resp* rcu_dereference (int ) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;

__attribute__((used)) static void ieee80211_set_csa(struct ieee80211_sub_if_data *sdata,
         struct beacon_data *beacon)
{
 struct probe_resp *resp;
 u8 *beacon_data;
 size_t beacon_data_len;
 int i;
 u8 count = beacon->csa_current_counter;

 switch (sdata->vif.type) {
 case 129:
  beacon_data = beacon->tail;
  beacon_data_len = beacon->tail_len;
  break;
 case 130:
  beacon_data = beacon->head;
  beacon_data_len = beacon->head_len;
  break;
 case 128:
  beacon_data = beacon->head;
  beacon_data_len = beacon->head_len;
  break;
 default:
  return;
 }

 rcu_read_lock();
 for (i = 0; i < IEEE80211_MAX_CSA_COUNTERS_NUM; ++i) {
  resp = rcu_dereference(sdata->u.ap.probe_resp);

  if (beacon->csa_counter_offsets[i]) {
   if (WARN_ON_ONCE(beacon->csa_counter_offsets[i] >=
      beacon_data_len)) {
    rcu_read_unlock();
    return;
   }

   beacon_data[beacon->csa_counter_offsets[i]] = count;
  }

  if (sdata->vif.type == 129 && resp)
   resp->data[resp->csa_counter_offsets[i]] = count;
 }
 rcu_read_unlock();
}
