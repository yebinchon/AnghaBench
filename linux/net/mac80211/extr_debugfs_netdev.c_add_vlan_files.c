
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int debugfs_dir; } ;
struct ieee80211_sub_if_data {TYPE_1__ vif; } ;


 int debugfs_create_file (char*,int,int ,struct ieee80211_sub_if_data*,int *) ;
 int num_mcast_sta_vlan_ops ;

__attribute__((used)) static void add_vlan_files(struct ieee80211_sub_if_data *sdata)
{

 debugfs_create_file("num_mcast_sta", 0400, sdata->vif.debugfs_dir,
       sdata, &num_mcast_sta_vlan_ops);
}
