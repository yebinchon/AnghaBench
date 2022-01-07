
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct wireless_dev {struct wiphy* wiphy; } ;
struct wiphy {int dummy; } ;
struct net_device {struct wireless_dev* ieee80211_ptr; } ;
struct cfg80211_registered_device {int dummy; } ;
struct cfg80211_chan_def {int dummy; } ;


 int GFP_KERNEL ;
 int NL80211_CMD_CH_SWITCH_STARTED_NOTIFY ;
 int nl80211_ch_switch_notify (struct cfg80211_registered_device*,struct net_device*,struct cfg80211_chan_def*,int ,int ,int ) ;
 int trace_cfg80211_ch_switch_started_notify (struct net_device*,struct cfg80211_chan_def*) ;
 struct cfg80211_registered_device* wiphy_to_rdev (struct wiphy*) ;

void cfg80211_ch_switch_started_notify(struct net_device *dev,
           struct cfg80211_chan_def *chandef,
           u8 count)
{
 struct wireless_dev *wdev = dev->ieee80211_ptr;
 struct wiphy *wiphy = wdev->wiphy;
 struct cfg80211_registered_device *rdev = wiphy_to_rdev(wiphy);

 trace_cfg80211_ch_switch_started_notify(dev, chandef);

 nl80211_ch_switch_notify(rdev, dev, chandef, GFP_KERNEL,
     NL80211_CMD_CH_SWITCH_STARTED_NOTIFY, count);
}
