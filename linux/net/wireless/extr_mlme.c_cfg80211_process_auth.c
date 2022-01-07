
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct wireless_dev {int netdev; int wiphy; } ;
struct cfg80211_registered_device {int dummy; } ;


 int GFP_KERNEL ;
 int cfg80211_sme_rx_auth (struct wireless_dev*,int const*,size_t) ;
 int nl80211_send_rx_auth (struct cfg80211_registered_device*,int ,int const*,size_t,int ) ;
 struct cfg80211_registered_device* wiphy_to_rdev (int ) ;

__attribute__((used)) static void cfg80211_process_auth(struct wireless_dev *wdev,
      const u8 *buf, size_t len)
{
 struct cfg80211_registered_device *rdev = wiphy_to_rdev(wdev->wiphy);

 nl80211_send_rx_auth(rdev, wdev->netdev, buf, len, GFP_KERNEL);
 cfg80211_sme_rx_auth(wdev, buf, len);
}
