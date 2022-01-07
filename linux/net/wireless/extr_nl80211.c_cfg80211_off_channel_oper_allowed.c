
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {TYPE_1__* chan; } ;
struct wireless_dev {int wiphy; TYPE_2__ chandef; } ;
struct TYPE_3__ {int flags; } ;


 int ASSERT_WDEV_LOCK (struct wireless_dev*) ;
 int IEEE80211_CHAN_RADAR ;
 int cfg80211_beaconing_iface_active (struct wireless_dev*) ;
 int regulatory_pre_cac_allowed (int ) ;

__attribute__((used)) static bool cfg80211_off_channel_oper_allowed(struct wireless_dev *wdev)
{
 ASSERT_WDEV_LOCK(wdev);

 if (!cfg80211_beaconing_iface_active(wdev))
  return 1;

 if (!(wdev->chandef.chan->flags & IEEE80211_CHAN_RADAR))
  return 1;

 return regulatory_pre_cac_allowed(wdev->wiphy);
}
