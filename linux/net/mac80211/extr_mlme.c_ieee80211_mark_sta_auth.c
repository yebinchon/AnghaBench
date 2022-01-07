
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u8 ;
struct sta_info {int dummy; } ;
struct ieee80211_if_managed {TYPE_2__* auth_data; } ;
struct TYPE_4__ {struct ieee80211_if_managed mgd; } ;
struct ieee80211_sub_if_data {TYPE_3__* local; int name; TYPE_1__ u; } ;
struct TYPE_6__ {int sta_mtx; } ;
struct TYPE_5__ {int done; int timeout_started; scalar_t__ timeout; } ;


 scalar_t__ IEEE80211_AUTH_WAIT_ASSOC ;
 int IEEE80211_STA_AUTH ;
 int WARN_ONCE (int,char*,int ,int const*) ;
 scalar_t__ jiffies ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int run_again (struct ieee80211_sub_if_data*,scalar_t__) ;
 int sdata_info (struct ieee80211_sub_if_data*,char*,...) ;
 struct sta_info* sta_info_get (struct ieee80211_sub_if_data*,int const*) ;
 scalar_t__ sta_info_move_state (struct sta_info*,int ) ;

__attribute__((used)) static bool ieee80211_mark_sta_auth(struct ieee80211_sub_if_data *sdata,
        const u8 *bssid)
{
 struct ieee80211_if_managed *ifmgd = &sdata->u.mgd;
 struct sta_info *sta;
 bool result = 1;

 sdata_info(sdata, "authenticated\n");
 ifmgd->auth_data->done = 1;
 ifmgd->auth_data->timeout = jiffies + IEEE80211_AUTH_WAIT_ASSOC;
 ifmgd->auth_data->timeout_started = 1;
 run_again(sdata, ifmgd->auth_data->timeout);


 mutex_lock(&sdata->local->sta_mtx);
 sta = sta_info_get(sdata, bssid);
 if (!sta) {
  WARN_ONCE(1, "%s: STA %pM not found", sdata->name, bssid);
  result = 0;
  goto out;
 }
 if (sta_info_move_state(sta, IEEE80211_STA_AUTH)) {
  sdata_info(sdata, "failed moving %pM to auth\n", bssid);
  result = 0;
  goto out;
 }

out:
 mutex_unlock(&sdata->local->sta_mtx);
 return result;
}
