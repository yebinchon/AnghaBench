
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cfg80211_registered_device {int dfs_update_channels_wk; } ;


 int cancel_delayed_work (int *) ;
 int cfg80211_wq ;
 int queue_delayed_work (int ,int *,int ) ;

void cfg80211_sched_dfs_chan_update(struct cfg80211_registered_device *rdev)
{
 cancel_delayed_work(&rdev->dfs_update_channels_wk);
 queue_delayed_work(cfg80211_wq, &rdev->dfs_update_channels_wk, 0);
}
