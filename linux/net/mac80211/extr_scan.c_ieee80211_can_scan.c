
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int flags; } ;
struct TYPE_6__ {TYPE_2__ mgd; } ;
struct TYPE_4__ {scalar_t__ type; } ;
struct ieee80211_sub_if_data {TYPE_3__ u; TYPE_1__ vif; } ;
struct ieee80211_local {int roc_list; } ;


 int IEEE80211_STA_CONNECTION_POLL ;
 scalar_t__ NL80211_IFTYPE_STATION ;
 int __ieee80211_can_leave_ch (struct ieee80211_sub_if_data*) ;
 int list_empty (int *) ;

__attribute__((used)) static bool ieee80211_can_scan(struct ieee80211_local *local,
          struct ieee80211_sub_if_data *sdata)
{
 if (!__ieee80211_can_leave_ch(sdata))
  return 0;

 if (!list_empty(&local->roc_list))
  return 0;

 if (sdata->vif.type == NL80211_IFTYPE_STATION &&
     sdata->u.mgd.flags & IEEE80211_STA_CONNECTION_POLL)
  return 0;

 return 1;
}
