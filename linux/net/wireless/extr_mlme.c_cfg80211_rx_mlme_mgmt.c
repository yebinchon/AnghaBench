
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct wireless_dev {int dummy; } ;
struct net_device {struct wireless_dev* ieee80211_ptr; } ;
struct ieee80211_mgmt {int frame_control; } ;


 int ASSERT_WDEV_LOCK (struct wireless_dev*) ;
 scalar_t__ WARN_ON (int) ;
 int cfg80211_process_auth (struct wireless_dev*,int const*,size_t) ;
 int cfg80211_process_deauth (struct wireless_dev*,int const*,size_t) ;
 int cfg80211_process_disassoc (struct wireless_dev*,int const*,size_t) ;
 scalar_t__ ieee80211_is_auth (int ) ;
 scalar_t__ ieee80211_is_deauth (int ) ;
 scalar_t__ ieee80211_is_disassoc (int ) ;
 int trace_cfg80211_rx_mlme_mgmt (struct net_device*,int const*,size_t) ;

void cfg80211_rx_mlme_mgmt(struct net_device *dev, const u8 *buf, size_t len)
{
 struct wireless_dev *wdev = dev->ieee80211_ptr;
 struct ieee80211_mgmt *mgmt = (void *)buf;

 ASSERT_WDEV_LOCK(wdev);

 trace_cfg80211_rx_mlme_mgmt(dev, buf, len);

 if (WARN_ON(len < 2))
  return;

 if (ieee80211_is_auth(mgmt->frame_control))
  cfg80211_process_auth(wdev, buf, len);
 else if (ieee80211_is_deauth(mgmt->frame_control))
  cfg80211_process_deauth(wdev, buf, len);
 else if (ieee80211_is_disassoc(mgmt->frame_control))
  cfg80211_process_disassoc(wdev, buf, len);
}
