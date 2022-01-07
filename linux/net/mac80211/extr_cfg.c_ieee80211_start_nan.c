
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct wireless_dev {int dummy; } ;
struct wiphy {int dummy; } ;
struct cfg80211_nan_conf {int dummy; } ;
struct TYPE_4__ {struct cfg80211_nan_conf conf; } ;
struct TYPE_5__ {TYPE_1__ nan; } ;
struct ieee80211_sub_if_data {TYPE_2__ u; TYPE_3__* local; } ;
struct TYPE_6__ {int chanctx_mtx; } ;


 struct ieee80211_sub_if_data* IEEE80211_WDEV_TO_SUB_IF (struct wireless_dev*) ;
 int drv_start_nan (TYPE_3__*,struct ieee80211_sub_if_data*,struct cfg80211_nan_conf*) ;
 int ieee80211_check_combinations (struct ieee80211_sub_if_data*,int *,int ,int ) ;
 int ieee80211_do_open (struct wireless_dev*,int) ;
 int ieee80211_sdata_stop (struct ieee80211_sub_if_data*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int ieee80211_start_nan(struct wiphy *wiphy,
          struct wireless_dev *wdev,
          struct cfg80211_nan_conf *conf)
{
 struct ieee80211_sub_if_data *sdata = IEEE80211_WDEV_TO_SUB_IF(wdev);
 int ret;

 mutex_lock(&sdata->local->chanctx_mtx);
 ret = ieee80211_check_combinations(sdata, ((void*)0), 0, 0);
 mutex_unlock(&sdata->local->chanctx_mtx);
 if (ret < 0)
  return ret;

 ret = ieee80211_do_open(wdev, 1);
 if (ret)
  return ret;

 ret = drv_start_nan(sdata->local, sdata, conf);
 if (ret)
  ieee80211_sdata_stop(sdata);

 sdata->u.nan.conf = *conf;

 return ret;
}
