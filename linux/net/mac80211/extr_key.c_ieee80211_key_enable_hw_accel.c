
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_10__ {int addr; } ;
struct sta_info {TYPE_4__ sta; int uploaded; } ;
struct TYPE_8__ {scalar_t__ type; } ;
struct ieee80211_sub_if_data {TYPE_2__ vif; } ;
struct TYPE_11__ {int flags; int cipher; int keyidx; } ;
struct ieee80211_key {int flags; TYPE_3__* local; TYPE_5__ conf; struct sta_info* sta; struct ieee80211_sub_if_data* sdata; } ;
struct TYPE_9__ {int hw; TYPE_1__* ops; } ;
struct TYPE_7__ {int set_key; } ;


 int EINVAL ;
 int ENOSPC ;
 int EOPNOTSUPP ;
 int IEEE80211_KEY_FLAG_GENERATE_IV ;
 int IEEE80211_KEY_FLAG_GENERATE_MMIC ;
 int IEEE80211_KEY_FLAG_PAIRWISE ;
 int IEEE80211_KEY_FLAG_PUT_IV_SPACE ;
 int IEEE80211_KEY_FLAG_PUT_MIC_SPACE ;
 int IEEE80211_KEY_FLAG_RESERVE_TAILROOM ;
 int KEY_FLAG_TAINTED ;
 int KEY_FLAG_UPLOADED_TO_HARDWARE ;
 scalar_t__ NL80211_IFTYPE_AP_VLAN ;
 int SET_KEY ;
 int SUPPORTS_PER_STA_GTK ;
 int SW_CRYPTO_CONTROL ;
 int WARN_ON (int) ;
 int assert_key_lock (TYPE_3__*) ;
 int bcast_addr ;
 int decrease_tailroom_need_count (struct ieee80211_sub_if_data*,int) ;
 int drv_set_key (TYPE_3__*,int ,struct ieee80211_sub_if_data*,TYPE_4__*,TYPE_5__*) ;
 scalar_t__ ieee80211_hw_check (int *,int ) ;
 int increment_tailroom_need_count (struct ieee80211_sub_if_data*) ;
 int might_sleep () ;
 int sdata_err (struct ieee80211_sub_if_data*,char*,int ,int ,int) ;

__attribute__((used)) static int ieee80211_key_enable_hw_accel(struct ieee80211_key *key)
{
 struct ieee80211_sub_if_data *sdata = key->sdata;
 struct sta_info *sta;
 int ret = -EOPNOTSUPP;

 might_sleep();

 if (key->flags & KEY_FLAG_TAINTED) {







  if (key->flags & KEY_FLAG_UPLOADED_TO_HARDWARE &&
      !(key->conf.flags & (IEEE80211_KEY_FLAG_GENERATE_MMIC |
      IEEE80211_KEY_FLAG_PUT_MIC_SPACE |
      IEEE80211_KEY_FLAG_RESERVE_TAILROOM)))
   increment_tailroom_need_count(sdata);

  key->flags &= ~KEY_FLAG_UPLOADED_TO_HARDWARE;
  return -EINVAL;
 }

 if (!key->local->ops->set_key)
  goto out_unsupported;

 assert_key_lock(key->local);

 sta = key->sta;





 if (sta && !(key->conf.flags & IEEE80211_KEY_FLAG_PAIRWISE) &&
     !ieee80211_hw_check(&key->local->hw, SUPPORTS_PER_STA_GTK))
  goto out_unsupported;

 if (sta && !sta->uploaded)
  goto out_unsupported;

 if (sdata->vif.type == NL80211_IFTYPE_AP_VLAN) {




  if (!(key->conf.flags & IEEE80211_KEY_FLAG_PAIRWISE)) {
   ret = 1;
   goto out_unsupported;
  }
 }

 ret = drv_set_key(key->local, SET_KEY, sdata,
     sta ? &sta->sta : ((void*)0), &key->conf);

 if (!ret) {
  key->flags |= KEY_FLAG_UPLOADED_TO_HARDWARE;

  if (!(key->conf.flags & (IEEE80211_KEY_FLAG_GENERATE_MMIC |
      IEEE80211_KEY_FLAG_PUT_MIC_SPACE |
      IEEE80211_KEY_FLAG_RESERVE_TAILROOM)))
   decrease_tailroom_need_count(sdata, 1);

  WARN_ON((key->conf.flags & IEEE80211_KEY_FLAG_PUT_IV_SPACE) &&
   (key->conf.flags & IEEE80211_KEY_FLAG_GENERATE_IV));

  WARN_ON((key->conf.flags & IEEE80211_KEY_FLAG_PUT_MIC_SPACE) &&
   (key->conf.flags & IEEE80211_KEY_FLAG_GENERATE_MMIC));

  return 0;
 }

 if (ret != -ENOSPC && ret != -EOPNOTSUPP && ret != 1)
  sdata_err(sdata,
     "failed to set key (%d, %pM) to hardware (%d)\n",
     key->conf.keyidx,
     sta ? sta->sta.addr : bcast_addr, ret);

 out_unsupported:
 switch (key->conf.cipher) {
 case 128:
 case 129:
 case 130:
 case 134:
 case 133:
 case 138:
 case 137:
 case 136:
 case 135:
 case 132:
 case 131:

  if (ret == 1)
   return 0;
  if (ieee80211_hw_check(&key->local->hw, SW_CRYPTO_CONTROL))
   return -EINVAL;
  return 0;
 default:
  return -EINVAL;
 }
}
