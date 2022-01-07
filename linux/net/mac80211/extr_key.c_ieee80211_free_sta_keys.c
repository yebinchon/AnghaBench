
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct sta_info {int * ptk; int * gtk; } ;
struct ieee80211_local {int key_mtx; } ;
struct TYPE_4__ {int flags; } ;
struct ieee80211_key {TYPE_3__* sdata; TYPE_1__ conf; int sta; } ;
struct TYPE_5__ {scalar_t__ type; } ;
struct TYPE_6__ {TYPE_2__ vif; } ;


 int ARRAY_SIZE (int *) ;
 int IEEE80211_KEY_FLAG_PAIRWISE ;
 scalar_t__ NL80211_IFTYPE_STATION ;
 int NUM_DEFAULT_KEYS ;
 int __ieee80211_key_destroy (struct ieee80211_key*,int) ;
 int ieee80211_key_replace (TYPE_3__*,int ,int,struct ieee80211_key*,int *) ;
 struct ieee80211_key* key_mtx_dereference (struct ieee80211_local*,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

void ieee80211_free_sta_keys(struct ieee80211_local *local,
        struct sta_info *sta)
{
 struct ieee80211_key *key;
 int i;

 mutex_lock(&local->key_mtx);
 for (i = 0; i < ARRAY_SIZE(sta->gtk); i++) {
  key = key_mtx_dereference(local, sta->gtk[i]);
  if (!key)
   continue;
  ieee80211_key_replace(key->sdata, key->sta,
    key->conf.flags & IEEE80211_KEY_FLAG_PAIRWISE,
    key, ((void*)0));
  __ieee80211_key_destroy(key, key->sdata->vif.type ==
     NL80211_IFTYPE_STATION);
 }

 for (i = 0; i < NUM_DEFAULT_KEYS; i++) {
  key = key_mtx_dereference(local, sta->ptk[i]);
  if (!key)
   continue;
  ieee80211_key_replace(key->sdata, key->sta,
    key->conf.flags & IEEE80211_KEY_FLAG_PAIRWISE,
    key, ((void*)0));
  __ieee80211_key_destroy(key, key->sdata->vif.type ==
     NL80211_IFTYPE_STATION);
 }

 mutex_unlock(&local->key_mtx);
}
