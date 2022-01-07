
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct vif_params {int flags; scalar_t__ vht_mumimo_follow_addr; scalar_t__ vht_mumimo_groups; } ;
struct TYPE_3__ {int flags; } ;
struct TYPE_4__ {TYPE_1__ mntr; } ;
struct ieee80211_sub_if_data {TYPE_2__ u; struct ieee80211_local* local; } ;
struct ieee80211_local {int monitor_sdata; } ;


 int EBUSY ;
 int EOPNOTSUPP ;
 int MONITOR_FLAG_ACTIVE ;
 int MONITOR_FLAG_COOK_FRAMES ;
 int ieee80211_adjust_monitor_flags (struct ieee80211_sub_if_data*,int) ;
 int ieee80211_configure_filter (struct ieee80211_local*) ;
 scalar_t__ ieee80211_sdata_running (struct ieee80211_sub_if_data*) ;
 int ieee80211_set_mu_mimo_follow (struct ieee80211_sub_if_data*,struct vif_params*) ;
 struct ieee80211_sub_if_data* rtnl_dereference (int ) ;

__attribute__((used)) static int ieee80211_set_mon_options(struct ieee80211_sub_if_data *sdata,
         struct vif_params *params)
{
 struct ieee80211_local *local = sdata->local;
 struct ieee80211_sub_if_data *monitor_sdata;


 if (params->flags && ieee80211_sdata_running(sdata)) {
  u32 mask = MONITOR_FLAG_COOK_FRAMES | MONITOR_FLAG_ACTIVE;
  if ((params->flags & mask) != (sdata->u.mntr.flags & mask))
   return -EBUSY;
 }


 monitor_sdata = rtnl_dereference(local->monitor_sdata);

 if (!monitor_sdata &&
     (params->vht_mumimo_groups || params->vht_mumimo_follow_addr))
  return -EOPNOTSUPP;



 if (monitor_sdata)
  ieee80211_set_mu_mimo_follow(monitor_sdata, params);

 if (params->flags) {
  if (ieee80211_sdata_running(sdata)) {
   ieee80211_adjust_monitor_flags(sdata, -1);
   sdata->u.mntr.flags = params->flags;
   ieee80211_adjust_monitor_flags(sdata, 1);

   ieee80211_configure_filter(local);
  } else {





   sdata->u.mntr.flags = params->flags;
  }
 }

 return 0;
}
