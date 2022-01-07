
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int keys; } ;
struct wireless_dev {int iftype; int disconnect_wk; scalar_t__ netdev; TYPE_1__ wext; int list; int pmsr_free_wk; int wiphy; } ;
struct cfg80211_registered_device {int devlist_generation; } ;


 int ASSERT_RTNL () ;
 int NL80211_CMD_DEL_INTERFACE ;


 int cfg80211_cqm_config_free (struct wireless_dev*) ;
 int cfg80211_mlme_purge_registrations (struct wireless_dev*) ;
 int cfg80211_stop_nan (struct cfg80211_registered_device*,struct wireless_dev*) ;
 int cfg80211_stop_p2p_device (struct cfg80211_registered_device*,struct wireless_dev*) ;
 int flush_work (int *) ;
 int kzfree (int ) ;
 int list_del_rcu (int *) ;
 int nl80211_notify_iface (struct cfg80211_registered_device*,struct wireless_dev*,int ) ;
 int synchronize_rcu () ;
 struct cfg80211_registered_device* wiphy_to_rdev (int ) ;

__attribute__((used)) static void __cfg80211_unregister_wdev(struct wireless_dev *wdev, bool sync)
{
 struct cfg80211_registered_device *rdev = wiphy_to_rdev(wdev->wiphy);

 ASSERT_RTNL();

 flush_work(&wdev->pmsr_free_wk);

 nl80211_notify_iface(rdev, wdev, NL80211_CMD_DEL_INTERFACE);

 list_del_rcu(&wdev->list);
 if (sync)
  synchronize_rcu();
 rdev->devlist_generation++;

 cfg80211_mlme_purge_registrations(wdev);

 switch (wdev->iftype) {
 case 128:
  cfg80211_stop_p2p_device(rdev, wdev);
  break;
 case 129:
  cfg80211_stop_nan(rdev, wdev);
  break;
 default:
  break;
 }





 if (wdev->netdev)
  flush_work(&wdev->disconnect_wk);

 cfg80211_cqm_config_free(wdev);
}
