
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int chan; } ;
struct wireless_dev {int cac_started; unsigned long cac_start_time; int cac_time_ms; TYPE_1__ chandef; struct wiphy* wiphy; } ;
struct wiphy {int dummy; } ;
struct net_device {struct wireless_dev* ieee80211_ptr; } ;
struct cfg80211_registered_device {int propagate_cac_done_wk; int cac_done_chandef; } ;
struct cfg80211_chan_def {int dummy; } ;
typedef int gfp_t ;
typedef enum nl80211_radar_event { ____Placeholder_nl80211_radar_event } nl80211_radar_event ;


 int NL80211_DFS_AVAILABLE ;



 scalar_t__ WARN_ON (int) ;
 int cfg80211_sched_dfs_chan_update (struct cfg80211_registered_device*) ;
 int cfg80211_set_dfs_state (struct wiphy*,struct cfg80211_chan_def const*,int ) ;
 int cfg80211_wq ;
 int jiffies ;
 int memcpy (int *,struct cfg80211_chan_def const*,int) ;
 unsigned long msecs_to_jiffies (int ) ;
 int nl80211_radar_notify (struct cfg80211_registered_device*,struct cfg80211_chan_def const*,int,struct net_device*,int ) ;
 int queue_work (int ,int *) ;
 int time_after_eq (int ,unsigned long) ;
 int trace_cfg80211_cac_event (struct net_device*,int) ;
 struct cfg80211_registered_device* wiphy_to_rdev (struct wiphy*) ;

void cfg80211_cac_event(struct net_device *netdev,
   const struct cfg80211_chan_def *chandef,
   enum nl80211_radar_event event, gfp_t gfp)
{
 struct wireless_dev *wdev = netdev->ieee80211_ptr;
 struct wiphy *wiphy = wdev->wiphy;
 struct cfg80211_registered_device *rdev = wiphy_to_rdev(wiphy);
 unsigned long timeout;

 trace_cfg80211_cac_event(netdev, event);

 if (WARN_ON(!wdev->cac_started && event != 128))
  return;

 if (WARN_ON(!wdev->chandef.chan))
  return;

 switch (event) {
 case 129:
  timeout = wdev->cac_start_time +
     msecs_to_jiffies(wdev->cac_time_ms);
  WARN_ON(!time_after_eq(jiffies, timeout));
  cfg80211_set_dfs_state(wiphy, chandef, NL80211_DFS_AVAILABLE);
  memcpy(&rdev->cac_done_chandef, chandef,
         sizeof(struct cfg80211_chan_def));
  queue_work(cfg80211_wq, &rdev->propagate_cac_done_wk);
  cfg80211_sched_dfs_chan_update(rdev);

 case 130:
  wdev->cac_started = 0;
  break;
 case 128:
  wdev->cac_started = 1;
  break;
 default:
  WARN_ON(1);
  return;
 }

 nl80211_radar_notify(rdev, chandef, event, netdev, gfp);
}
