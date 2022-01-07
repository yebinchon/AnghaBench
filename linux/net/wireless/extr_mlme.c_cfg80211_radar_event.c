
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wiphy {int dummy; } ;
struct cfg80211_registered_device {int propagate_radar_detect_wk; int radar_chandef; } ;
struct cfg80211_chan_def {int dummy; } ;
typedef int gfp_t ;


 int NL80211_DFS_UNAVAILABLE ;
 int NL80211_RADAR_DETECTED ;
 int cfg80211_sched_dfs_chan_update (struct cfg80211_registered_device*) ;
 int cfg80211_set_dfs_state (struct wiphy*,struct cfg80211_chan_def*,int ) ;
 int cfg80211_wq ;
 int memcpy (int *,struct cfg80211_chan_def*,int) ;
 int nl80211_radar_notify (struct cfg80211_registered_device*,struct cfg80211_chan_def*,int ,int *,int ) ;
 int queue_work (int ,int *) ;
 int trace_cfg80211_radar_event (struct wiphy*,struct cfg80211_chan_def*) ;
 struct cfg80211_registered_device* wiphy_to_rdev (struct wiphy*) ;

void cfg80211_radar_event(struct wiphy *wiphy,
     struct cfg80211_chan_def *chandef,
     gfp_t gfp)
{
 struct cfg80211_registered_device *rdev = wiphy_to_rdev(wiphy);

 trace_cfg80211_radar_event(wiphy, chandef);





 cfg80211_set_dfs_state(wiphy, chandef, NL80211_DFS_UNAVAILABLE);

 cfg80211_sched_dfs_chan_update(rdev);

 nl80211_radar_notify(rdev, chandef, NL80211_RADAR_DETECTED, ((void*)0), gfp);

 memcpy(&rdev->radar_chandef, chandef, sizeof(struct cfg80211_chan_def));
 queue_work(cfg80211_wq, &rdev->propagate_radar_detect_wk);
}
