
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct sta_info {int * gtk; int * ptk; } ;
struct TYPE_4__ {scalar_t__ type; } ;
struct ieee80211_sub_if_data {TYPE_3__* local; int * keys; TYPE_1__ vif; } ;
struct TYPE_5__ {int keyidx; int flags; scalar_t__ cipher; } ;
struct ieee80211_key {struct sta_info* sta; struct ieee80211_sub_if_data* sdata; TYPE_3__* local; TYPE_2__ conf; } ;
struct TYPE_6__ {int key_mtx; } ;


 int EOPNOTSUPP ;
 int IEEE80211_KEY_FLAG_PAIRWISE ;
 scalar_t__ NL80211_IFTYPE_STATION ;
 int ieee80211_debugfs_key_add (struct ieee80211_key*) ;
 int ieee80211_key_destroy (struct ieee80211_key*,int) ;
 int ieee80211_key_free (struct ieee80211_key*,int) ;
 int ieee80211_key_free_unused (struct ieee80211_key*) ;
 scalar_t__ ieee80211_key_identical (struct ieee80211_sub_if_data*,struct ieee80211_key*,struct ieee80211_key*) ;
 int ieee80211_key_replace (struct ieee80211_sub_if_data*,struct sta_info*,int,struct ieee80211_key*,struct ieee80211_key*) ;
 int increment_tailroom_need_count (struct ieee80211_sub_if_data*) ;
 struct ieee80211_key* key_mtx_dereference (TYPE_3__*,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

int ieee80211_key_link(struct ieee80211_key *key,
         struct ieee80211_sub_if_data *sdata,
         struct sta_info *sta)
{
 struct ieee80211_key *old_key;
 int idx = key->conf.keyidx;
 bool pairwise = key->conf.flags & IEEE80211_KEY_FLAG_PAIRWISE;





 bool delay_tailroom = sdata->vif.type == NL80211_IFTYPE_STATION;
 int ret = -EOPNOTSUPP;

 mutex_lock(&sdata->local->key_mtx);

 if (sta && pairwise) {
  struct ieee80211_key *alt_key;

  old_key = key_mtx_dereference(sdata->local, sta->ptk[idx]);
  alt_key = key_mtx_dereference(sdata->local, sta->ptk[idx ^ 1]);




  if ((alt_key && alt_key->conf.cipher != key->conf.cipher) ||
      (old_key && old_key->conf.cipher != key->conf.cipher))
   goto out;
 } else if (sta) {
  old_key = key_mtx_dereference(sdata->local, sta->gtk[idx]);
 } else {
  old_key = key_mtx_dereference(sdata->local, sdata->keys[idx]);
 }


 if (!pairwise) {
  if (old_key && old_key->conf.cipher != key->conf.cipher)
   goto out;
 }





 if (ieee80211_key_identical(sdata, old_key, key)) {
  ieee80211_key_free_unused(key);
  ret = 0;
  goto out;
 }

 key->local = sdata->local;
 key->sdata = sdata;
 key->sta = sta;

 increment_tailroom_need_count(sdata);

 ret = ieee80211_key_replace(sdata, sta, pairwise, old_key, key);

 if (!ret) {
  ieee80211_debugfs_key_add(key);
  ieee80211_key_destroy(old_key, delay_tailroom);
 } else {
  ieee80211_key_free(key, delay_tailroom);
 }

 out:
 mutex_unlock(&sdata->local->key_mtx);

 return ret;
}
