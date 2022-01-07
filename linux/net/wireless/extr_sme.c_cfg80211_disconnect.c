
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct wireless_dev {scalar_t__ ssid_len; int current_bss; scalar_t__ conn; scalar_t__ conn_owner_nlportid; int * connect_keys; } ;
struct net_device {struct wireless_dev* ieee80211_ptr; } ;
struct cfg80211_registered_device {TYPE_1__* ops; } ;
struct TYPE_2__ {int disconnect; } ;


 int ASSERT_WDEV_LOCK (struct wireless_dev*) ;
 int cfg80211_mlme_down (struct cfg80211_registered_device*,struct net_device*) ;
 int cfg80211_sme_disconnect (struct wireless_dev*,int ) ;
 int kzfree (int *) ;
 int rdev_disconnect (struct cfg80211_registered_device*,struct net_device*,int ) ;

int cfg80211_disconnect(struct cfg80211_registered_device *rdev,
   struct net_device *dev, u16 reason, bool wextev)
{
 struct wireless_dev *wdev = dev->ieee80211_ptr;
 int err = 0;

 ASSERT_WDEV_LOCK(wdev);

 kzfree(wdev->connect_keys);
 wdev->connect_keys = ((void*)0);

 wdev->conn_owner_nlportid = 0;

 if (wdev->conn)
  err = cfg80211_sme_disconnect(wdev, reason);
 else if (!rdev->ops->disconnect)
  cfg80211_mlme_down(rdev, dev);
 else if (wdev->ssid_len)
  err = rdev_disconnect(rdev, dev, reason);






 if (!wdev->current_bss)
  wdev->ssid_len = 0;

 return err;
}
