
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct wireless_dev {struct wiphy* wiphy; } ;
struct wiphy {int dummy; } ;
struct ieee80211_channel {int dummy; } ;
struct cfg80211_registered_device {int dummy; } ;
typedef int gfp_t ;


 int NL80211_CMD_FRAME_WAIT_CANCEL ;
 int nl80211_send_remain_on_chan_event (int ,struct cfg80211_registered_device*,struct wireless_dev*,int ,struct ieee80211_channel*,int ,int ) ;
 int trace_cfg80211_tx_mgmt_expired (struct wireless_dev*,int ,struct ieee80211_channel*) ;
 struct cfg80211_registered_device* wiphy_to_rdev (struct wiphy*) ;

void cfg80211_tx_mgmt_expired(struct wireless_dev *wdev, u64 cookie,
     struct ieee80211_channel *chan,
     gfp_t gfp)
{
 struct wiphy *wiphy = wdev->wiphy;
 struct cfg80211_registered_device *rdev = wiphy_to_rdev(wiphy);

 trace_cfg80211_tx_mgmt_expired(wdev, cookie, chan);
 nl80211_send_remain_on_chan_event(NL80211_CMD_FRAME_WAIT_CANCEL,
       rdev, wdev, cookie, chan, 0, gfp);
}
