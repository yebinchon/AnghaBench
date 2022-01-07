
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {int num_mcast_sta; } ;
struct TYPE_5__ {int num_mcast_sta; } ;
struct TYPE_8__ {TYPE_3__ vlan; TYPE_1__ ap; } ;
struct TYPE_6__ {scalar_t__ type; } ;
struct ieee80211_sub_if_data {TYPE_4__ u; TYPE_2__ vif; } ;


 scalar_t__ NL80211_IFTYPE_AP ;
 scalar_t__ NL80211_IFTYPE_AP_VLAN ;
 int atomic_inc (int *) ;

void ieee80211_vif_inc_num_mcast(struct ieee80211_sub_if_data *sdata)
{
 if (sdata->vif.type == NL80211_IFTYPE_AP)
  atomic_inc(&sdata->u.ap.num_mcast_sta);
 else if (sdata->vif.type == NL80211_IFTYPE_AP_VLAN)
  atomic_inc(&sdata->u.vlan.num_mcast_sta);
}
