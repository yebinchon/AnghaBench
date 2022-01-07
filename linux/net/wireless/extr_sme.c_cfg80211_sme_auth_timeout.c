
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wireless_dev {TYPE_1__* conn; int wiphy; } ;
struct cfg80211_registered_device {int conn_work; } ;
struct TYPE_2__ {int state; } ;


 int CFG80211_CONN_AUTH_FAILED_TIMEOUT ;
 int schedule_work (int *) ;
 struct cfg80211_registered_device* wiphy_to_rdev (int ) ;

void cfg80211_sme_auth_timeout(struct wireless_dev *wdev)
{
 struct cfg80211_registered_device *rdev = wiphy_to_rdev(wdev->wiphy);

 if (!wdev->conn)
  return;

 wdev->conn->state = CFG80211_CONN_AUTH_FAILED_TIMEOUT;
 schedule_work(&rdev->conn_work);
}
