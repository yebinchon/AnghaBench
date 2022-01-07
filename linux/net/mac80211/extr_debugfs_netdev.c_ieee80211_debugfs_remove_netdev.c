
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int * subdir_stations; } ;
struct TYPE_3__ {int * debugfs_dir; } ;
struct ieee80211_sub_if_data {TYPE_2__ debugfs; TYPE_1__ vif; } ;


 int debugfs_remove_recursive (int *) ;

void ieee80211_debugfs_remove_netdev(struct ieee80211_sub_if_data *sdata)
{
 if (!sdata->vif.debugfs_dir)
  return;

 debugfs_remove_recursive(sdata->vif.debugfs_dir);
 sdata->vif.debugfs_dir = ((void*)0);
 sdata->debugfs.subdir_stations = ((void*)0);
}
