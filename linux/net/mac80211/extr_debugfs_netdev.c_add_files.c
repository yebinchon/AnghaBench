
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ type; int debugfs_dir; } ;
struct ieee80211_sub_if_data {TYPE_1__ vif; } ;


 int DEBUGFS_ADD (int ) ;




 scalar_t__ NL80211_IFTYPE_MONITOR ;


 int add_ap_files (struct ieee80211_sub_if_data*) ;
 int add_common_files (struct ieee80211_sub_if_data*) ;
 int add_ibss_files (struct ieee80211_sub_if_data*) ;
 int add_mesh_config (struct ieee80211_sub_if_data*) ;
 int add_mesh_files (struct ieee80211_sub_if_data*) ;
 int add_mesh_stats (struct ieee80211_sub_if_data*) ;
 int add_sta_files (struct ieee80211_sub_if_data*) ;
 int add_vlan_files (struct ieee80211_sub_if_data*) ;
 int add_wds_files (struct ieee80211_sub_if_data*) ;
 int ap_power_level ;
 int flags ;
 int state ;
 int txpower ;
 int user_power_level ;

__attribute__((used)) static void add_files(struct ieee80211_sub_if_data *sdata)
{
 if (!sdata->vif.debugfs_dir)
  return;

 DEBUGFS_ADD(flags);
 DEBUGFS_ADD(state);
 DEBUGFS_ADD(txpower);
 DEBUGFS_ADD(user_power_level);
 DEBUGFS_ADD(ap_power_level);

 if (sdata->vif.type != NL80211_IFTYPE_MONITOR)
  add_common_files(sdata);

 switch (sdata->vif.type) {
 case 130:





  break;
 case 129:
  add_sta_files(sdata);
  break;
 case 133:
  add_ibss_files(sdata);
  break;
 case 132:
  add_ap_files(sdata);
  break;
 case 131:
  add_vlan_files(sdata);
  break;
 case 128:
  add_wds_files(sdata);
  break;
 default:
  break;
 }
}
