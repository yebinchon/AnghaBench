
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct wireless_dev {int dummy; } ;
struct wiphy {int dummy; } ;
struct TYPE_8__ {int func_lock; int function_inst_ids; } ;
struct TYPE_9__ {TYPE_3__ nan; } ;
struct TYPE_6__ {scalar_t__ type; } ;
struct ieee80211_sub_if_data {TYPE_4__ u; TYPE_5__* local; TYPE_1__ vif; } ;
struct cfg80211_nan_func {int instance_id; } ;
struct TYPE_7__ {scalar_t__ max_nan_de_entries; } ;
struct TYPE_10__ {TYPE_2__ hw; } ;


 int ENETDOWN ;
 int EOPNOTSUPP ;
 int GFP_ATOMIC ;
 struct ieee80211_sub_if_data* IEEE80211_WDEV_TO_SUB_IF (struct wireless_dev*) ;
 scalar_t__ NL80211_IFTYPE_NAN ;
 int WARN_ON (int) ;
 int drv_add_nan_func (TYPE_5__*,struct ieee80211_sub_if_data*,struct cfg80211_nan_func*) ;
 int idr_alloc (int *,struct cfg80211_nan_func*,int,scalar_t__,int ) ;
 int idr_remove (int *,int) ;
 int ieee80211_sdata_running (struct ieee80211_sub_if_data*) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

__attribute__((used)) static int ieee80211_add_nan_func(struct wiphy *wiphy,
      struct wireless_dev *wdev,
      struct cfg80211_nan_func *nan_func)
{
 struct ieee80211_sub_if_data *sdata = IEEE80211_WDEV_TO_SUB_IF(wdev);
 int ret;

 if (sdata->vif.type != NL80211_IFTYPE_NAN)
  return -EOPNOTSUPP;

 if (!ieee80211_sdata_running(sdata))
  return -ENETDOWN;

 spin_lock_bh(&sdata->u.nan.func_lock);

 ret = idr_alloc(&sdata->u.nan.function_inst_ids,
   nan_func, 1, sdata->local->hw.max_nan_de_entries + 1,
   GFP_ATOMIC);
 spin_unlock_bh(&sdata->u.nan.func_lock);

 if (ret < 0)
  return ret;

 nan_func->instance_id = ret;

 WARN_ON(nan_func->instance_id == 0);

 ret = drv_add_nan_func(sdata->local, sdata, nan_func);
 if (ret) {
  spin_lock_bh(&sdata->u.nan.func_lock);
  idr_remove(&sdata->u.nan.function_inst_ids,
      nan_func->instance_id);
  spin_unlock_bh(&sdata->u.nan.func_lock);
 }

 return ret;
}
