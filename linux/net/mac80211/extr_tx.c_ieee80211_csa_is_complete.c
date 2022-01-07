
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct ieee80211_vif {scalar_t__ type; } ;
struct ieee80211_if_mesh {int beacon; } ;
struct ieee80211_if_ibss {int presp; } ;
struct ieee80211_if_ap {int beacon; } ;
struct TYPE_2__ {struct ieee80211_if_mesh mesh; struct ieee80211_if_ibss ibss; struct ieee80211_if_ap ap; } ;
struct ieee80211_sub_if_data {TYPE_1__ u; } ;
struct beacon_data {int* tail; size_t tail_len; int* head; size_t head_len; size_t* csa_counter_offsets; } ;


 scalar_t__ NL80211_IFTYPE_ADHOC ;
 scalar_t__ NL80211_IFTYPE_AP ;
 scalar_t__ NL80211_IFTYPE_MESH_POINT ;
 scalar_t__ WARN_ON (int) ;
 scalar_t__ WARN_ON_ONCE (int) ;
 int ieee80211_sdata_running (struct ieee80211_sub_if_data*) ;
 struct beacon_data* rcu_dereference (int ) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;
 struct ieee80211_sub_if_data* vif_to_sdata (struct ieee80211_vif*) ;

bool ieee80211_csa_is_complete(struct ieee80211_vif *vif)
{
 struct ieee80211_sub_if_data *sdata = vif_to_sdata(vif);
 struct beacon_data *beacon = ((void*)0);
 u8 *beacon_data;
 size_t beacon_data_len;
 int ret = 0;

 if (!ieee80211_sdata_running(sdata))
  return 0;

 rcu_read_lock();
 if (vif->type == NL80211_IFTYPE_AP) {
  struct ieee80211_if_ap *ap = &sdata->u.ap;

  beacon = rcu_dereference(ap->beacon);
  if (WARN_ON(!beacon || !beacon->tail))
   goto out;
  beacon_data = beacon->tail;
  beacon_data_len = beacon->tail_len;
 } else if (vif->type == NL80211_IFTYPE_ADHOC) {
  struct ieee80211_if_ibss *ifibss = &sdata->u.ibss;

  beacon = rcu_dereference(ifibss->presp);
  if (!beacon)
   goto out;

  beacon_data = beacon->head;
  beacon_data_len = beacon->head_len;
 } else if (vif->type == NL80211_IFTYPE_MESH_POINT) {
  struct ieee80211_if_mesh *ifmsh = &sdata->u.mesh;

  beacon = rcu_dereference(ifmsh->beacon);
  if (!beacon)
   goto out;

  beacon_data = beacon->head;
  beacon_data_len = beacon->head_len;
 } else {
  WARN_ON(1);
  goto out;
 }

 if (!beacon->csa_counter_offsets[0])
  goto out;

 if (WARN_ON_ONCE(beacon->csa_counter_offsets[0] > beacon_data_len))
  goto out;

 if (beacon_data[beacon->csa_counter_offsets[0]] == 1)
  ret = 1;
 out:
 rcu_read_unlock();

 return ret;
}
