
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct cfg80211_chan_def {int chan; } ;
struct wireless_dev {int iftype; struct cfg80211_chan_def preset_chandef; int beacon_interval; } ;
struct net_device {struct wireless_dev* ieee80211_ptr; } ;
struct genl_info {int dummy; } ;
struct TYPE_4__ {int features; } ;
struct cfg80211_registered_device {TYPE_2__ wiphy; TYPE_1__* ops; } ;
typedef enum nl80211_iftype { ____Placeholder_nl80211_iftype } nl80211_iftype ;
struct TYPE_3__ {int set_ap_chanwidth; } ;


 int EBUSY ;
 int EINVAL ;
 int EOPNOTSUPP ;
 int NL80211_FEATURE_AP_MODE_CHAN_WIDTH_CHANGE ;




 int cfg80211_reg_can_beacon_relax (TYPE_2__*,struct cfg80211_chan_def*,int) ;
 int cfg80211_set_mesh_channel (struct cfg80211_registered_device*,struct wireless_dev*,struct cfg80211_chan_def*) ;
 int cfg80211_set_monitor_channel (struct cfg80211_registered_device*,struct cfg80211_chan_def*) ;
 int nl80211_can_set_dev_channel (struct wireless_dev*) ;
 int nl80211_parse_chandef (struct cfg80211_registered_device*,struct genl_info*,struct cfg80211_chan_def*) ;
 int rdev_set_ap_chanwidth (struct cfg80211_registered_device*,struct net_device*,struct cfg80211_chan_def*) ;

__attribute__((used)) static int __nl80211_set_channel(struct cfg80211_registered_device *rdev,
     struct net_device *dev,
     struct genl_info *info)
{
 struct cfg80211_chan_def chandef;
 int result;
 enum nl80211_iftype iftype = 129;
 struct wireless_dev *wdev = ((void*)0);

 if (dev)
  wdev = dev->ieee80211_ptr;
 if (!nl80211_can_set_dev_channel(wdev))
  return -EOPNOTSUPP;
 if (wdev)
  iftype = wdev->iftype;

 result = nl80211_parse_chandef(rdev, info, &chandef);
 if (result)
  return result;

 switch (iftype) {
 case 131:
 case 128:
  if (!cfg80211_reg_can_beacon_relax(&rdev->wiphy, &chandef,
         iftype)) {
   result = -EINVAL;
   break;
  }
  if (wdev->beacon_interval) {
   if (!dev || !rdev->ops->set_ap_chanwidth ||
       !(rdev->wiphy.features &
         NL80211_FEATURE_AP_MODE_CHAN_WIDTH_CHANGE)) {
    result = -EBUSY;
    break;
   }


   if (chandef.chan != wdev->preset_chandef.chan) {
    result = -EBUSY;
    break;
   }
   result = rdev_set_ap_chanwidth(rdev, dev, &chandef);
   if (result)
    break;
  }
  wdev->preset_chandef = chandef;
  result = 0;
  break;
 case 130:
  result = cfg80211_set_mesh_channel(rdev, wdev, &chandef);
  break;
 case 129:
  result = cfg80211_set_monitor_channel(rdev, &chandef);
  break;
 default:
  result = -EINVAL;
 }

 return result;
}
