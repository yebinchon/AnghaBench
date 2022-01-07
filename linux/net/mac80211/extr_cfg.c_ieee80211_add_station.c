
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u8 ;
struct wiphy {int dummy; } ;
struct station_parameters {int sta_flags_set; struct net_device* vlan; } ;
struct TYPE_8__ {int tdls; } ;
struct sta_info {TYPE_4__ sta; } ;
struct net_device {int dummy; } ;
struct TYPE_6__ {int associated; } ;
struct TYPE_7__ {TYPE_2__ mgd; } ;
struct TYPE_5__ {scalar_t__ type; int addr; } ;
struct ieee80211_sub_if_data {TYPE_3__ u; TYPE_1__ vif; } ;
struct ieee80211_local {int dummy; } ;


 int BIT (int ) ;
 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 struct ieee80211_sub_if_data* IEEE80211_DEV_TO_SUB_IF (struct net_device*) ;
 scalar_t__ NL80211_IFTYPE_AP ;
 scalar_t__ NL80211_IFTYPE_AP_VLAN ;
 scalar_t__ NL80211_IFTYPE_STATION ;
 int NL80211_STA_FLAG_TDLS_PEER ;
 int WLAN_STA_ASSOC ;
 int WLAN_STA_TDLS_PEER ;
 scalar_t__ ether_addr_equal (int const*,int ) ;
 int is_valid_ether_addr (int const*) ;
 int rate_control_rate_init (struct sta_info*) ;
 int rcu_read_unlock () ;
 int sta_apply_parameters (struct ieee80211_local*,struct sta_info*,struct station_parameters*) ;
 struct sta_info* sta_info_alloc (struct ieee80211_sub_if_data*,int const*,int ) ;
 int sta_info_free (struct ieee80211_local*,struct sta_info*) ;
 int sta_info_insert_rcu (struct sta_info*) ;
 scalar_t__ test_sta_flag (struct sta_info*,int ) ;
 struct ieee80211_local* wiphy_priv (struct wiphy*) ;

__attribute__((used)) static int ieee80211_add_station(struct wiphy *wiphy, struct net_device *dev,
     const u8 *mac,
     struct station_parameters *params)
{
 struct ieee80211_local *local = wiphy_priv(wiphy);
 struct sta_info *sta;
 struct ieee80211_sub_if_data *sdata;
 int err;

 if (params->vlan) {
  sdata = IEEE80211_DEV_TO_SUB_IF(params->vlan);

  if (sdata->vif.type != NL80211_IFTYPE_AP_VLAN &&
      sdata->vif.type != NL80211_IFTYPE_AP)
   return -EINVAL;
 } else
  sdata = IEEE80211_DEV_TO_SUB_IF(dev);

 if (ether_addr_equal(mac, sdata->vif.addr))
  return -EINVAL;

 if (!is_valid_ether_addr(mac))
  return -EINVAL;

 if (params->sta_flags_set & BIT(NL80211_STA_FLAG_TDLS_PEER) &&
     sdata->vif.type == NL80211_IFTYPE_STATION &&
     !sdata->u.mgd.associated)
  return -EINVAL;

 sta = sta_info_alloc(sdata, mac, GFP_KERNEL);
 if (!sta)
  return -ENOMEM;

 if (params->sta_flags_set & BIT(NL80211_STA_FLAG_TDLS_PEER))
  sta->sta.tdls = 1;

 err = sta_apply_parameters(local, sta, params);
 if (err) {
  sta_info_free(local, sta);
  return err;
 }






 if (!test_sta_flag(sta, WLAN_STA_TDLS_PEER) &&
     test_sta_flag(sta, WLAN_STA_ASSOC))
  rate_control_rate_init(sta);

 err = sta_info_insert_rcu(sta);
 if (err) {
  rcu_read_unlock();
  return err;
 }

 rcu_read_unlock();

 return 0;
}
