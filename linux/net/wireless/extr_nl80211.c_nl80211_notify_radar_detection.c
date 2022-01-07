
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wireless_dev {int iftype; struct wiphy* wiphy; } ;
struct wiphy {int dummy; } ;
struct sk_buff {int dummy; } ;
struct cfg80211_chan_def {TYPE_1__* chan; } ;
struct net_device {int propagate_radar_detect_wk; struct cfg80211_chan_def radar_chandef; struct wireless_dev* ieee80211_ptr; } ;
struct genl_info {struct net_device** user_ptr; } ;
struct cfg80211_registered_device {int propagate_radar_detect_wk; struct cfg80211_chan_def radar_chandef; struct wireless_dev* ieee80211_ptr; } ;
typedef enum nl80211_dfs_regions { ____Placeholder_nl80211_dfs_regions } nl80211_dfs_regions ;
struct TYPE_2__ {scalar_t__ dfs_state; } ;


 int EINVAL ;
 int GENL_SET_ERR_MSG (struct genl_info*,char*) ;
 scalar_t__ NL80211_DFS_UNAVAILABLE ;
 int NL80211_DFS_UNSET ;
 int cfg80211_chandef_dfs_required (struct wiphy*,struct cfg80211_chan_def*,int ) ;
 int cfg80211_sched_dfs_chan_update (struct net_device*) ;
 int cfg80211_set_dfs_state (struct wiphy*,struct cfg80211_chan_def*,scalar_t__) ;
 int cfg80211_wq ;
 int nl80211_parse_chandef (struct net_device*,struct genl_info*,struct cfg80211_chan_def*) ;
 int queue_work (int ,int *) ;
 int reg_get_dfs_region (struct wiphy*) ;

__attribute__((used)) static int nl80211_notify_radar_detection(struct sk_buff *skb,
       struct genl_info *info)
{
 struct cfg80211_registered_device *rdev = info->user_ptr[0];
 struct net_device *dev = info->user_ptr[1];
 struct wireless_dev *wdev = dev->ieee80211_ptr;
 struct wiphy *wiphy = wdev->wiphy;
 struct cfg80211_chan_def chandef;
 enum nl80211_dfs_regions dfs_region;
 int err;

 dfs_region = reg_get_dfs_region(wiphy);
 if (dfs_region == NL80211_DFS_UNSET) {
  GENL_SET_ERR_MSG(info,
     "DFS Region is not set. Unexpected Radar indication");
  return -EINVAL;
 }

 err = nl80211_parse_chandef(rdev, info, &chandef);
 if (err) {
  GENL_SET_ERR_MSG(info, "Unable to extract chandef info");
  return err;
 }

 err = cfg80211_chandef_dfs_required(wiphy, &chandef, wdev->iftype);
 if (err < 0) {
  GENL_SET_ERR_MSG(info, "chandef is invalid");
  return err;
 }

 if (err == 0) {
  GENL_SET_ERR_MSG(info,
     "Unexpected Radar indication for chandef/iftype");
  return -EINVAL;
 }




 if (chandef.chan->dfs_state == NL80211_DFS_UNAVAILABLE)
  return 0;

 cfg80211_set_dfs_state(wiphy, &chandef, NL80211_DFS_UNAVAILABLE);

 cfg80211_sched_dfs_chan_update(rdev);

 rdev->radar_chandef = chandef;


 queue_work(cfg80211_wq, &rdev->propagate_radar_detect_wk);

 return 0;
}
