
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {int addr; } ;
struct sta_info {TYPE_3__ sta; } ;
struct ieee80211_sub_if_data {int dummy; } ;
struct TYPE_9__ {int flags; int keyidx; } ;
struct ieee80211_key {int flags; TYPE_4__ conf; TYPE_2__* local; struct ieee80211_sub_if_data* sdata; struct sta_info* sta; } ;
struct TYPE_7__ {TYPE_1__* ops; } ;
struct TYPE_6__ {int set_key; } ;


 int DISABLE_KEY ;
 int IEEE80211_KEY_FLAG_GENERATE_MMIC ;
 int IEEE80211_KEY_FLAG_PUT_MIC_SPACE ;
 int IEEE80211_KEY_FLAG_RESERVE_TAILROOM ;
 int KEY_FLAG_UPLOADED_TO_HARDWARE ;
 int assert_key_lock (TYPE_2__*) ;
 int bcast_addr ;
 int drv_set_key (TYPE_2__*,int ,struct ieee80211_sub_if_data*,TYPE_3__*,TYPE_4__*) ;
 int increment_tailroom_need_count (struct ieee80211_sub_if_data*) ;
 int might_sleep () ;
 int sdata_err (struct ieee80211_sub_if_data*,char*,int ,int ,int) ;

__attribute__((used)) static void ieee80211_key_disable_hw_accel(struct ieee80211_key *key)
{
 struct ieee80211_sub_if_data *sdata;
 struct sta_info *sta;
 int ret;

 might_sleep();

 if (!key || !key->local->ops->set_key)
  return;

 assert_key_lock(key->local);

 if (!(key->flags & KEY_FLAG_UPLOADED_TO_HARDWARE))
  return;

 sta = key->sta;
 sdata = key->sdata;

 if (!(key->conf.flags & (IEEE80211_KEY_FLAG_GENERATE_MMIC |
     IEEE80211_KEY_FLAG_PUT_MIC_SPACE |
     IEEE80211_KEY_FLAG_RESERVE_TAILROOM)))
  increment_tailroom_need_count(sdata);

 key->flags &= ~KEY_FLAG_UPLOADED_TO_HARDWARE;
 ret = drv_set_key(key->local, DISABLE_KEY, sdata,
     sta ? &sta->sta : ((void*)0), &key->conf);

 if (ret)
  sdata_err(sdata,
     "failed to remove key (%d, %pM) from hardware (%d)\n",
     key->conf.keyidx,
     sta ? sta->sta.addr : bcast_addr, ret);
}
