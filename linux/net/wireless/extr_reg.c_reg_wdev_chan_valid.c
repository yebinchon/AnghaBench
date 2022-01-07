
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct cfg80211_chan_def {int dummy; } ;
struct wireless_dev {int iftype; TYPE_3__* current_bss; struct cfg80211_chan_def chandef; int ssid_len; int beacon_interval; int netdev; } ;
struct wiphy {int dummy; } ;
struct cfg80211_registered_device {TYPE_1__* ops; } ;
typedef enum nl80211_iftype { ____Placeholder_nl80211_iftype } nl80211_iftype ;
struct TYPE_5__ {int channel; } ;
struct TYPE_6__ {TYPE_2__ pub; } ;
struct TYPE_4__ {int get_channel; } ;


 int IEEE80211_CHAN_DISABLED ;
 int NL80211_CHAN_NO_HT ;
 int WARN_ON (int) ;
 int cfg80211_chandef_create (struct cfg80211_chan_def*,int ,int ) ;
 int cfg80211_chandef_usable (struct wiphy*,struct cfg80211_chan_def*,int ) ;
 int cfg80211_reg_can_beacon_relax (struct wiphy*,struct cfg80211_chan_def*,int) ;
 int netif_running (int ) ;
 int rdev_get_channel (struct cfg80211_registered_device*,struct wireless_dev*,struct cfg80211_chan_def*) ;
 int wdev_lock (struct wireless_dev*) ;
 int wdev_unlock (struct wireless_dev*) ;
 struct cfg80211_registered_device* wiphy_to_rdev (struct wiphy*) ;

__attribute__((used)) static bool reg_wdev_chan_valid(struct wiphy *wiphy, struct wireless_dev *wdev)
{
 struct cfg80211_chan_def chandef = {};
 struct cfg80211_registered_device *rdev = wiphy_to_rdev(wiphy);
 enum nl80211_iftype iftype;

 wdev_lock(wdev);
 iftype = wdev->iftype;


 if (!wdev->netdev || !netif_running(wdev->netdev))
  goto wdev_inactive_unlock;

 switch (iftype) {
 case 134:
 case 129:
  if (!wdev->beacon_interval)
   goto wdev_inactive_unlock;
  chandef = wdev->chandef;
  break;
 case 135:
  if (!wdev->ssid_len)
   goto wdev_inactive_unlock;
  chandef = wdev->chandef;
  break;
 case 128:
 case 131:
  if (!wdev->current_bss ||
      !wdev->current_bss->pub.channel)
   goto wdev_inactive_unlock;

  if (!rdev->ops->get_channel ||
      rdev_get_channel(rdev, wdev, &chandef))
   cfg80211_chandef_create(&chandef,
      wdev->current_bss->pub.channel,
      NL80211_CHAN_NO_HT);
  break;
 case 132:
 case 133:
 case 130:

  break;
 default:

  WARN_ON(1);
  break;
 }

 wdev_unlock(wdev);

 switch (iftype) {
 case 134:
 case 129:
 case 135:
  return cfg80211_reg_can_beacon_relax(wiphy, &chandef, iftype);
 case 128:
 case 131:
  return cfg80211_chandef_usable(wiphy, &chandef,
            IEEE80211_CHAN_DISABLED);
 default:
  break;
 }

 return 1;

wdev_inactive_unlock:
 wdev_unlock(wdev);
 return 1;
}
