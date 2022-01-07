
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u16 ;
struct wireless_dev {TYPE_1__* conn; int wiphy; } ;
struct cfg80211_registered_device {int conn_work; } ;
struct TYPE_2__ {int prev_bssid_valid; int state; } ;


 int CFG80211_CONN_ASSOCIATE_NEXT ;
 int CFG80211_CONN_ASSOC_FAILED ;
 int CFG80211_CONN_CONNECTED ;
 scalar_t__ WLAN_STATUS_SUCCESS ;
 int schedule_work (int *) ;
 struct cfg80211_registered_device* wiphy_to_rdev (int ) ;

bool cfg80211_sme_rx_assoc_resp(struct wireless_dev *wdev, u16 status)
{
 struct cfg80211_registered_device *rdev = wiphy_to_rdev(wdev->wiphy);

 if (!wdev->conn)
  return 0;

 if (status == WLAN_STATUS_SUCCESS) {
  wdev->conn->state = CFG80211_CONN_CONNECTED;
  return 0;
 }

 if (wdev->conn->prev_bssid_valid) {





  wdev->conn->prev_bssid_valid = 0;
  wdev->conn->state = CFG80211_CONN_ASSOCIATE_NEXT;
  schedule_work(&rdev->conn_work);
  return 1;
 }

 wdev->conn->state = CFG80211_CONN_ASSOC_FAILED;
 schedule_work(&rdev->conn_work);
 return 0;
}
