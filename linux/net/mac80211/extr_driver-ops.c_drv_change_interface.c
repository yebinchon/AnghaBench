
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ieee80211_sub_if_data {int vif; } ;
struct ieee80211_local {int hw; TYPE_1__* ops; } ;
typedef enum nl80211_iftype { ____Placeholder_nl80211_iftype } nl80211_iftype ;
struct TYPE_2__ {int (* change_interface ) (int *,int *,int,int) ;} ;


 int EIO ;
 int check_sdata_in_driver (struct ieee80211_sub_if_data*) ;
 int might_sleep () ;
 int stub1 (int *,int *,int,int) ;
 int trace_drv_change_interface (struct ieee80211_local*,struct ieee80211_sub_if_data*,int,int) ;
 int trace_drv_return_int (struct ieee80211_local*,int) ;

int drv_change_interface(struct ieee80211_local *local,
    struct ieee80211_sub_if_data *sdata,
    enum nl80211_iftype type, bool p2p)
{
 int ret;

 might_sleep();

 if (!check_sdata_in_driver(sdata))
  return -EIO;

 trace_drv_change_interface(local, sdata, type, p2p);
 ret = local->ops->change_interface(&local->hw, &sdata->vif, type, p2p);
 trace_drv_return_int(local, ret);
 return ret;
}
