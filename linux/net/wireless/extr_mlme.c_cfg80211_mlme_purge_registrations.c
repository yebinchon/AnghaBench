
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wireless_dev {int mgmt_registrations_lock; int mgmt_registrations; int wiphy; } ;
struct cfg80211_registered_device {int mlme_unreg_lock; int mlme_unreg; } ;


 int cfg80211_process_mlme_unregistrations (struct cfg80211_registered_device*) ;
 int list_splice_tail_init (int *,int *) ;
 int spin_lock (int *) ;
 int spin_lock_bh (int *) ;
 int spin_unlock (int *) ;
 int spin_unlock_bh (int *) ;
 struct cfg80211_registered_device* wiphy_to_rdev (int ) ;

void cfg80211_mlme_purge_registrations(struct wireless_dev *wdev)
{
 struct cfg80211_registered_device *rdev = wiphy_to_rdev(wdev->wiphy);

 spin_lock_bh(&wdev->mgmt_registrations_lock);
 spin_lock(&rdev->mlme_unreg_lock);
 list_splice_tail_init(&wdev->mgmt_registrations, &rdev->mlme_unreg);
 spin_unlock(&rdev->mlme_unreg_lock);
 spin_unlock_bh(&wdev->mgmt_registrations_lock);

 cfg80211_process_mlme_unregistrations(rdev);
}
