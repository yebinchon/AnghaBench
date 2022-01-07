
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wireless_dev {scalar_t__ iftype; scalar_t__ ssid_len; int chandef; scalar_t__ beacon_interval; scalar_t__ conn_owner_nlportid; } ;
struct net_device {struct wireless_dev* ieee80211_ptr; } ;
struct cfg80211_registered_device {TYPE_1__* ops; } ;
struct TYPE_2__ {int stop_ap; } ;


 int ASSERT_WDEV_LOCK (struct wireless_dev*) ;
 int ENOENT ;
 int EOPNOTSUPP ;
 scalar_t__ NL80211_IFTYPE_AP ;
 scalar_t__ NL80211_IFTYPE_P2P_GO ;
 int cfg80211_disconnect_work ;
 int cfg80211_sched_dfs_chan_update (struct cfg80211_registered_device*) ;
 int memset (int *,int ,int) ;
 int nl80211_send_ap_stopped (struct wireless_dev*) ;
 int rdev_set_qos_map (struct cfg80211_registered_device*,struct net_device*,int *) ;
 int rdev_stop_ap (struct cfg80211_registered_device*,struct net_device*) ;
 int schedule_work (int *) ;

int __cfg80211_stop_ap(struct cfg80211_registered_device *rdev,
         struct net_device *dev, bool notify)
{
 struct wireless_dev *wdev = dev->ieee80211_ptr;
 int err;

 ASSERT_WDEV_LOCK(wdev);

 if (!rdev->ops->stop_ap)
  return -EOPNOTSUPP;

 if (dev->ieee80211_ptr->iftype != NL80211_IFTYPE_AP &&
     dev->ieee80211_ptr->iftype != NL80211_IFTYPE_P2P_GO)
  return -EOPNOTSUPP;

 if (!wdev->beacon_interval)
  return -ENOENT;

 err = rdev_stop_ap(rdev, dev);
 if (!err) {
  wdev->conn_owner_nlportid = 0;
  wdev->beacon_interval = 0;
  memset(&wdev->chandef, 0, sizeof(wdev->chandef));
  wdev->ssid_len = 0;
  rdev_set_qos_map(rdev, dev, ((void*)0));
  if (notify)
   nl80211_send_ap_stopped(wdev);




  cfg80211_sched_dfs_chan_update(rdev);
 }

 schedule_work(&cfg80211_disconnect_work);

 return err;
}
