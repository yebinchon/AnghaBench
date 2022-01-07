
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct ieee80211_vif {scalar_t__ type; } ;
struct TYPE_3__ {scalar_t__ mfp; } ;
struct TYPE_4__ {TYPE_1__ mgd; } ;
struct ieee80211_sub_if_data {TYPE_2__ u; struct ieee80211_local* local; } ;
struct ieee80211_local {int wowlan; } ;
struct ieee80211_key_conf {int flags; int key; int keylen; int keyidx; int cipher; } ;
struct ieee80211_key {struct ieee80211_key_conf conf; } ;


 int EINVAL ;
 struct ieee80211_key_conf* ERR_CAST (struct ieee80211_key*) ;
 struct ieee80211_key_conf* ERR_PTR (int) ;
 int IEEE80211_KEY_FLAG_RX_MGMT ;
 scalar_t__ IEEE80211_MFP_DISABLED ;
 scalar_t__ IS_ERR (struct ieee80211_key*) ;
 scalar_t__ NL80211_IFTYPE_STATION ;
 scalar_t__ WARN_ON (int) ;
 struct ieee80211_key* ieee80211_key_alloc (int ,int ,int ,int ,int ,int *,int *) ;
 int ieee80211_key_link (struct ieee80211_key*,struct ieee80211_sub_if_data*,int *) ;
 struct ieee80211_sub_if_data* vif_to_sdata (struct ieee80211_vif*) ;

struct ieee80211_key_conf *
ieee80211_gtk_rekey_add(struct ieee80211_vif *vif,
   struct ieee80211_key_conf *keyconf)
{
 struct ieee80211_sub_if_data *sdata = vif_to_sdata(vif);
 struct ieee80211_local *local = sdata->local;
 struct ieee80211_key *key;
 int err;

 if (WARN_ON(!local->wowlan))
  return ERR_PTR(-EINVAL);

 if (WARN_ON(vif->type != NL80211_IFTYPE_STATION))
  return ERR_PTR(-EINVAL);

 key = ieee80211_key_alloc(keyconf->cipher, keyconf->keyidx,
      keyconf->keylen, keyconf->key,
      0, ((void*)0), ((void*)0));
 if (IS_ERR(key))
  return ERR_CAST(key);

 if (sdata->u.mgd.mfp != IEEE80211_MFP_DISABLED)
  key->conf.flags |= IEEE80211_KEY_FLAG_RX_MGMT;

 err = ieee80211_key_link(key, sdata, ((void*)0));
 if (err)
  return ERR_PTR(err);

 return &key->conf;
}
