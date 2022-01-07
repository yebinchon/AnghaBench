
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_8__ {int bg_scan_period; int privacy; int ssid_len; int ie_len; int ie; } ;
struct TYPE_6__ {int default_key; TYPE_4__ connect; int * prev_bssid; scalar_t__ prev_bssid_valid; TYPE_3__* keys; int ie_len; int ie; } ;
struct wireless_dev {TYPE_2__ wext; int netdev; } ;
struct cfg80211_registered_device {int dummy; } ;
struct cfg80211_cached_keys {int * data; TYPE_1__* params; } ;
struct TYPE_7__ {int def; } ;
struct TYPE_5__ {int key; } ;


 int ASSERT_RTNL () ;
 int ASSERT_WDEV_LOCK (struct wireless_dev*) ;
 int CFG80211_MAX_WEP_KEYS ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int cfg80211_connect (struct cfg80211_registered_device*,int ,TYPE_4__*,struct cfg80211_cached_keys*,int const*) ;
 struct cfg80211_cached_keys* kmemdup (TYPE_3__*,int,int ) ;
 int kzfree (struct cfg80211_cached_keys*) ;
 int netif_running (int ) ;

int cfg80211_mgd_wext_connect(struct cfg80211_registered_device *rdev,
         struct wireless_dev *wdev)
{
 struct cfg80211_cached_keys *ck = ((void*)0);
 const u8 *prev_bssid = ((void*)0);
 int err, i;

 ASSERT_RTNL();
 ASSERT_WDEV_LOCK(wdev);

 if (!netif_running(wdev->netdev))
  return 0;

 wdev->wext.connect.ie = wdev->wext.ie;
 wdev->wext.connect.ie_len = wdev->wext.ie_len;


 wdev->wext.connect.bg_scan_period = -1;

 if (wdev->wext.keys) {
  wdev->wext.keys->def = wdev->wext.default_key;
  if (wdev->wext.default_key != -1)
   wdev->wext.connect.privacy = 1;
 }

 if (!wdev->wext.connect.ssid_len)
  return 0;

 if (wdev->wext.keys && wdev->wext.keys->def != -1) {
  ck = kmemdup(wdev->wext.keys, sizeof(*ck), GFP_KERNEL);
  if (!ck)
   return -ENOMEM;
  for (i = 0; i < CFG80211_MAX_WEP_KEYS; i++)
   ck->params[i].key = ck->data[i];
 }

 if (wdev->wext.prev_bssid_valid)
  prev_bssid = wdev->wext.prev_bssid;

 err = cfg80211_connect(rdev, wdev->netdev,
          &wdev->wext.connect, ck, prev_bssid);
 if (err)
  kzfree(ck);

 return err;
}
