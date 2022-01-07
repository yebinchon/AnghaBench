
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct wiphy {int dummy; } ;
struct TYPE_3__ {int registered; scalar_t__ wowlan_config; int dev; int debugfsdir; int wdev_list; } ;
struct cfg80211_registered_device {int opencount; TYPE_2__* ops; TYPE_1__ wiphy; int propagate_cac_done_wk; int propagate_radar_detect_wk; int mlme_unreg_wk; int sched_scan_stop_wk; int destroy_work; int dfs_update_channels_wk; int event_work; int conn_work; int scan_done_wk; int list; scalar_t__ rfkill; int dev_wait; } ;
struct TYPE_4__ {scalar_t__ set_wakeup; } ;


 int NL80211_CMD_DEL_WIPHY ;
 int WARN_ON (int) ;
 int cancel_delayed_work_sync (int *) ;
 int cancel_work_sync (int *) ;
 int cfg80211_rdev_free_coalesce (struct cfg80211_registered_device*) ;
 int cfg80211_rdev_free_wowlan (struct cfg80211_registered_device*) ;
 int cfg80211_rdev_list_generation ;
 int debugfs_remove_recursive (int ) ;
 int device_del (int *) ;
 int flush_work (int *) ;
 int list_del_rcu (int *) ;
 int list_empty (int *) ;
 int nl80211_notify_wiphy (struct cfg80211_registered_device*,int ) ;
 int rdev_set_wakeup (struct cfg80211_registered_device*,int) ;
 int rfkill_unregister (scalar_t__) ;
 int rtnl_lock () ;
 int rtnl_unlock () ;
 int synchronize_rcu () ;
 int wait_event (int ,int ) ;
 int wiphy_regulatory_deregister (struct wiphy*) ;
 struct cfg80211_registered_device* wiphy_to_rdev (struct wiphy*) ;

void wiphy_unregister(struct wiphy *wiphy)
{
 struct cfg80211_registered_device *rdev = wiphy_to_rdev(wiphy);

 wait_event(rdev->dev_wait, ({
  int __count;
  rtnl_lock();
  __count = rdev->opencount;
  rtnl_unlock();
  __count == 0; }));

 if (rdev->rfkill)
  rfkill_unregister(rdev->rfkill);

 rtnl_lock();
 nl80211_notify_wiphy(rdev, NL80211_CMD_DEL_WIPHY);
 rdev->wiphy.registered = 0;

 WARN_ON(!list_empty(&rdev->wiphy.wdev_list));





 debugfs_remove_recursive(rdev->wiphy.debugfsdir);
 list_del_rcu(&rdev->list);
 synchronize_rcu();





 wiphy_regulatory_deregister(wiphy);

 cfg80211_rdev_list_generation++;
 device_del(&rdev->wiphy.dev);

 rtnl_unlock();

 flush_work(&rdev->scan_done_wk);
 cancel_work_sync(&rdev->conn_work);
 flush_work(&rdev->event_work);
 cancel_delayed_work_sync(&rdev->dfs_update_channels_wk);
 flush_work(&rdev->destroy_work);
 flush_work(&rdev->sched_scan_stop_wk);
 flush_work(&rdev->mlme_unreg_wk);
 flush_work(&rdev->propagate_radar_detect_wk);
 flush_work(&rdev->propagate_cac_done_wk);





 cfg80211_rdev_free_wowlan(rdev);
 cfg80211_rdev_free_coalesce(rdev);
}
