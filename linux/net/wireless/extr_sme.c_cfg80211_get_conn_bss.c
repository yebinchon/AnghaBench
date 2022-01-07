
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct wireless_dev {TYPE_2__* conn; int conn_bss_type; int wiphy; } ;
struct cfg80211_registered_device {int conn_work; } ;
struct cfg80211_bss {int channel; int bssid; } ;
struct TYPE_3__ {int channel; int bssid; int privacy; int ssid_len; int ssid; } ;
struct TYPE_4__ {int state; TYPE_1__ params; int bssid; } ;


 int ASSERT_WDEV_LOCK (struct wireless_dev*) ;
 int CFG80211_CONN_AUTHENTICATE_NEXT ;
 int ETH_ALEN ;
 int IEEE80211_PRIVACY (int ) ;
 struct cfg80211_bss* cfg80211_get_bss (int ,int ,int ,int ,int ,int ,int ) ;
 int memcpy (int ,int ,int ) ;
 int schedule_work (int *) ;
 struct cfg80211_registered_device* wiphy_to_rdev (int ) ;

__attribute__((used)) static struct cfg80211_bss *cfg80211_get_conn_bss(struct wireless_dev *wdev)
{
 struct cfg80211_registered_device *rdev = wiphy_to_rdev(wdev->wiphy);
 struct cfg80211_bss *bss;

 ASSERT_WDEV_LOCK(wdev);

 bss = cfg80211_get_bss(wdev->wiphy, wdev->conn->params.channel,
          wdev->conn->params.bssid,
          wdev->conn->params.ssid,
          wdev->conn->params.ssid_len,
          wdev->conn_bss_type,
          IEEE80211_PRIVACY(wdev->conn->params.privacy));
 if (!bss)
  return ((void*)0);

 memcpy(wdev->conn->bssid, bss->bssid, ETH_ALEN);
 wdev->conn->params.bssid = wdev->conn->bssid;
 wdev->conn->params.channel = bss->channel;
 wdev->conn->state = CFG80211_CONN_AUTHENTICATE_NEXT;
 schedule_work(&rdev->conn_work);

 return bss;
}
