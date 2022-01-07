
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u16 ;
struct wireless_dev {TYPE_2__* conn; int netdev; int wiphy; } ;
struct cfg80211_registered_device {TYPE_3__* ops; } ;
struct TYPE_6__ {int deauth; } ;
struct TYPE_4__ {int bssid; } ;
struct TYPE_5__ {scalar_t__ state; TYPE_1__ params; } ;


 scalar_t__ CFG80211_CONN_SCANNING ;
 scalar_t__ CFG80211_CONN_SCAN_AGAIN ;
 int EOPNOTSUPP ;
 int cfg80211_mlme_deauth (struct cfg80211_registered_device*,int ,int ,int *,int ,int ,int) ;
 int cfg80211_sme_free (struct wireless_dev*) ;
 struct cfg80211_registered_device* wiphy_to_rdev (int ) ;

__attribute__((used)) static int cfg80211_sme_disconnect(struct wireless_dev *wdev, u16 reason)
{
 struct cfg80211_registered_device *rdev = wiphy_to_rdev(wdev->wiphy);
 int err;

 if (!wdev->conn)
  return 0;

 if (!rdev->ops->deauth)
  return -EOPNOTSUPP;

 if (wdev->conn->state == CFG80211_CONN_SCANNING ||
     wdev->conn->state == CFG80211_CONN_SCAN_AGAIN) {
  err = 0;
  goto out;
 }


 err = cfg80211_mlme_deauth(rdev, wdev->netdev,
       wdev->conn->params.bssid,
       ((void*)0), 0, reason, 0);
 out:
 cfg80211_sme_free(wdev);
 return err;
}
