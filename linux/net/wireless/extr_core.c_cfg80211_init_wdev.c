
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wireless_dev {int list; scalar_t__ identifier; int pmsr_free_wk; int pmsr_lock; int pmsr_list; int mgmt_registrations_lock; int mgmt_registrations; int event_lock; int event_list; int mtx; } ;
struct TYPE_2__ {int wdev_list; } ;
struct cfg80211_registered_device {int devlist_generation; TYPE_1__ wiphy; scalar_t__ wdev_id; } ;


 int INIT_LIST_HEAD (int *) ;
 int INIT_WORK (int *,int ) ;
 int NL80211_CMD_NEW_INTERFACE ;
 int cfg80211_pmsr_free_wk ;
 int list_add_rcu (int *,int *) ;
 int mutex_init (int *) ;
 int nl80211_notify_iface (struct cfg80211_registered_device*,struct wireless_dev*,int ) ;
 int spin_lock_init (int *) ;

void cfg80211_init_wdev(struct cfg80211_registered_device *rdev,
   struct wireless_dev *wdev)
{
 mutex_init(&wdev->mtx);
 INIT_LIST_HEAD(&wdev->event_list);
 spin_lock_init(&wdev->event_lock);
 INIT_LIST_HEAD(&wdev->mgmt_registrations);
 spin_lock_init(&wdev->mgmt_registrations_lock);
 INIT_LIST_HEAD(&wdev->pmsr_list);
 spin_lock_init(&wdev->pmsr_lock);
 INIT_WORK(&wdev->pmsr_free_wk, cfg80211_pmsr_free_wk);
 if (!wdev->identifier)
  wdev->identifier = ++rdev->wdev_id;
 list_add_rcu(&wdev->list, &rdev->wiphy.wdev_list);
 rdev->devlist_generation++;

 nl80211_notify_iface(rdev, wdev, NL80211_CMD_NEW_INTERFACE);
}
