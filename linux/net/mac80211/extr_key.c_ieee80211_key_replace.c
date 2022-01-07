
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sta_info {int ptk_idx; int * gtk; int * ptk; } ;
struct ieee80211_sub_if_data {int * keys; int default_mgmt_key; int local; int default_multicast_key; int default_unicast_key; int key_list; } ;
struct TYPE_4__ {int keyidx; int flags; } ;
struct ieee80211_key {int flags; int list; TYPE_2__ conf; TYPE_1__* local; } ;
struct TYPE_3__ {int wowlan; } ;


 int IEEE80211_KEY_FLAG_NO_AUTO_TX ;
 int KEY_FLAG_UPLOADED_TO_HARDWARE ;
 scalar_t__ WARN_ON (int) ;
 int WLAN_STA_BLOCK_BA ;
 int __ieee80211_set_default_key (struct ieee80211_sub_if_data*,int,int,int) ;
 int __ieee80211_set_default_mgmt_key (struct ieee80211_sub_if_data*,int) ;
 int clear_sta_flag (struct sta_info*,int ) ;
 int ieee80211_check_fast_rx (struct sta_info*) ;
 int ieee80211_check_fast_xmit (struct sta_info*) ;
 int ieee80211_key_disable_hw_accel (struct ieee80211_key*) ;
 int ieee80211_key_enable_hw_accel (struct ieee80211_key*) ;
 int ieee80211_pairwise_rekey (struct ieee80211_key*,struct ieee80211_key*) ;
 struct ieee80211_key* key_mtx_dereference (int ,int ) ;
 int list_add_tail_rcu (int *,int *) ;
 int list_del_rcu (int *) ;
 int rcu_assign_pointer (int ,struct ieee80211_key*) ;

__attribute__((used)) static int ieee80211_key_replace(struct ieee80211_sub_if_data *sdata,
      struct sta_info *sta,
      bool pairwise,
      struct ieee80211_key *old,
      struct ieee80211_key *new)
{
 int idx;
 int ret = 0;
 bool defunikey, defmultikey, defmgmtkey;


 if (WARN_ON(!new && !old))
  return 0;

 if (new)
  list_add_tail_rcu(&new->list, &sdata->key_list);

 WARN_ON(new && old && new->conf.keyidx != old->conf.keyidx);

 if (new && sta && pairwise) {



  ieee80211_pairwise_rekey(old, new);
 }

 if (old) {
  idx = old->conf.keyidx;

  if (old->flags & KEY_FLAG_UPLOADED_TO_HARDWARE) {
   ieee80211_key_disable_hw_accel(old);

   if (new)
    ret = ieee80211_key_enable_hw_accel(new);
  }
 } else {

  idx = new->conf.keyidx;
  if (!new->local->wowlan)
   ret = ieee80211_key_enable_hw_accel(new);
 }

 if (ret)
  return ret;

 if (sta) {
  if (pairwise) {
   rcu_assign_pointer(sta->ptk[idx], new);
   if (new &&
       !(new->conf.flags & IEEE80211_KEY_FLAG_NO_AUTO_TX)) {
    sta->ptk_idx = idx;
    clear_sta_flag(sta, WLAN_STA_BLOCK_BA);
    ieee80211_check_fast_xmit(sta);
   }
  } else {
   rcu_assign_pointer(sta->gtk[idx], new);
  }




  if (new && !old)
   ieee80211_check_fast_rx(sta);
 } else {
  defunikey = old &&
   old == key_mtx_dereference(sdata->local,
      sdata->default_unicast_key);
  defmultikey = old &&
   old == key_mtx_dereference(sdata->local,
      sdata->default_multicast_key);
  defmgmtkey = old &&
   old == key_mtx_dereference(sdata->local,
      sdata->default_mgmt_key);

  if (defunikey && !new)
   __ieee80211_set_default_key(sdata, -1, 1, 0);
  if (defmultikey && !new)
   __ieee80211_set_default_key(sdata, -1, 0, 1);
  if (defmgmtkey && !new)
   __ieee80211_set_default_mgmt_key(sdata, -1);

  rcu_assign_pointer(sdata->keys[idx], new);
  if (defunikey && new)
   __ieee80211_set_default_key(sdata, new->conf.keyidx,
          1, 0);
  if (defmultikey && new)
   __ieee80211_set_default_key(sdata, new->conf.keyidx,
          0, 1);
  if (defmgmtkey && new)
   __ieee80211_set_default_mgmt_key(sdata,
        new->conf.keyidx);
 }

 if (old)
  list_del_rcu(&old->list);

 return 0;
}
