
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wireless_dev {int dummy; } ;
struct wiphy {int dummy; } ;
struct ieee80211_sub_if_data {TYPE_1__* local; } ;
struct TYPE_2__ {int chanctx_mtx; } ;


 struct ieee80211_sub_if_data* IEEE80211_WDEV_TO_SUB_IF (struct wireless_dev*) ;
 int ieee80211_check_combinations (struct ieee80211_sub_if_data*,int *,int ,int ) ;
 int ieee80211_do_open (struct wireless_dev*,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int ieee80211_start_p2p_device(struct wiphy *wiphy,
          struct wireless_dev *wdev)
{
 struct ieee80211_sub_if_data *sdata = IEEE80211_WDEV_TO_SUB_IF(wdev);
 int ret;

 mutex_lock(&sdata->local->chanctx_mtx);
 ret = ieee80211_check_combinations(sdata, ((void*)0), 0, 0);
 mutex_unlock(&sdata->local->chanctx_mtx);
 if (ret < 0)
  return ret;

 return ieee80211_do_open(wdev, 1);
}
