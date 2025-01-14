
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ u8 ;
typedef int u64 ;
struct wireless_dev {int dummy; } ;
struct wiphy {int dummy; } ;
struct TYPE_6__ {int func_lock; } ;
struct TYPE_4__ {TYPE_3__ nan; } ;
struct TYPE_5__ {scalar_t__ type; } ;
struct ieee80211_sub_if_data {int local; TYPE_1__ u; TYPE_2__ vif; } ;
struct cfg80211_nan_func {scalar_t__ instance_id; } ;


 struct ieee80211_sub_if_data* IEEE80211_WDEV_TO_SUB_IF (struct wireless_dev*) ;
 scalar_t__ NL80211_IFTYPE_NAN ;
 int drv_del_nan_func (int ,struct ieee80211_sub_if_data*,scalar_t__) ;
 struct cfg80211_nan_func* ieee80211_find_nan_func_by_cookie (struct ieee80211_sub_if_data*,int ) ;
 int ieee80211_sdata_running (struct ieee80211_sub_if_data*) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

__attribute__((used)) static void ieee80211_del_nan_func(struct wiphy *wiphy,
      struct wireless_dev *wdev, u64 cookie)
{
 struct ieee80211_sub_if_data *sdata = IEEE80211_WDEV_TO_SUB_IF(wdev);
 struct cfg80211_nan_func *func;
 u8 instance_id = 0;

 if (sdata->vif.type != NL80211_IFTYPE_NAN ||
     !ieee80211_sdata_running(sdata))
  return;

 spin_lock_bh(&sdata->u.nan.func_lock);

 func = ieee80211_find_nan_func_by_cookie(sdata, cookie);
 if (func)
  instance_id = func->instance_id;

 spin_unlock_bh(&sdata->u.nan.func_lock);

 if (instance_id)
  drv_del_nan_func(sdata->local, sdata, instance_id);
}
