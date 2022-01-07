
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sta_info {int * debugfs_dir; } ;


 int debugfs_remove_recursive (int *) ;

void ieee80211_sta_debugfs_remove(struct sta_info *sta)
{
 debugfs_remove_recursive(sta->debugfs_dir);
 sta->debugfs_dir = ((void*)0);
}
