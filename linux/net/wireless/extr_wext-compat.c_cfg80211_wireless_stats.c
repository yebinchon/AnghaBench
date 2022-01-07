
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int wstats ;
typedef int u8 ;
struct wireless_dev {scalar_t__ iftype; TYPE_3__* current_bss; int wiphy; } ;
struct TYPE_12__ {int retries; int misc; } ;
struct TYPE_11__ {int level; int qual; int updated; } ;
struct station_info {int filled; int signal; int tx_failed; TYPE_6__ discard; int rx_dropped_misc; TYPE_5__ qual; } ;
struct net_device {struct wireless_dev* ieee80211_ptr; } ;
struct iw_statistics {int filled; int signal; int tx_failed; TYPE_6__ discard; int rx_dropped_misc; TYPE_5__ qual; } ;
struct TYPE_10__ {int signal_type; } ;
struct cfg80211_registered_device {TYPE_4__ wiphy; TYPE_1__* ops; } ;
typedef int sinfo ;
struct TYPE_8__ {int bssid; } ;
struct TYPE_9__ {TYPE_2__ pub; } ;
struct TYPE_7__ {int get_station; } ;


 int BIT_ULL (int ) ;


 int ETH_ALEN ;
 int IW_QUAL_DBM ;
 int IW_QUAL_LEVEL_INVALID ;
 int IW_QUAL_LEVEL_UPDATED ;
 int IW_QUAL_NOISE_INVALID ;
 int IW_QUAL_QUAL_INVALID ;
 int IW_QUAL_QUAL_UPDATED ;
 scalar_t__ NL80211_IFTYPE_STATION ;
 int NL80211_STA_INFO_RX_DROP_MISC ;
 int NL80211_STA_INFO_SIGNAL ;
 int NL80211_STA_INFO_TX_FAILED ;
 int cfg80211_sinfo_release_content (struct station_info*) ;
 int memcpy (int *,int ,int) ;
 int memset (struct station_info*,int ,int) ;
 scalar_t__ rdev_get_station (struct cfg80211_registered_device*,struct net_device*,int *,struct station_info*) ;
 int wdev_lock (struct wireless_dev*) ;
 int wdev_unlock (struct wireless_dev*) ;
 struct cfg80211_registered_device* wiphy_to_rdev (int ) ;

__attribute__((used)) static struct iw_statistics *cfg80211_wireless_stats(struct net_device *dev)
{
 struct wireless_dev *wdev = dev->ieee80211_ptr;
 struct cfg80211_registered_device *rdev = wiphy_to_rdev(wdev->wiphy);

 static struct iw_statistics wstats;
 static struct station_info sinfo = {};
 u8 bssid[ETH_ALEN];

 if (dev->ieee80211_ptr->iftype != NL80211_IFTYPE_STATION)
  return ((void*)0);

 if (!rdev->ops->get_station)
  return ((void*)0);


 wdev_lock(wdev);
 if (!wdev->current_bss) {
  wdev_unlock(wdev);
  return ((void*)0);
 }
 memcpy(bssid, wdev->current_bss->pub.bssid, ETH_ALEN);
 wdev_unlock(wdev);

 memset(&sinfo, 0, sizeof(sinfo));

 if (rdev_get_station(rdev, dev, bssid, &sinfo))
  return ((void*)0);

 memset(&wstats, 0, sizeof(wstats));

 switch (rdev->wiphy.signal_type) {
 case 129:
  if (sinfo.filled & BIT_ULL(NL80211_STA_INFO_SIGNAL)) {
   int sig = sinfo.signal;
   wstats.qual.updated |= IW_QUAL_LEVEL_UPDATED;
   wstats.qual.updated |= IW_QUAL_QUAL_UPDATED;
   wstats.qual.updated |= IW_QUAL_DBM;
   wstats.qual.level = sig;
   if (sig < -110)
    sig = -110;
   else if (sig > -40)
    sig = -40;
   wstats.qual.qual = sig + 110;
   break;
  }

 case 128:
  if (sinfo.filled & BIT_ULL(NL80211_STA_INFO_SIGNAL)) {
   wstats.qual.updated |= IW_QUAL_LEVEL_UPDATED;
   wstats.qual.updated |= IW_QUAL_QUAL_UPDATED;
   wstats.qual.level = sinfo.signal;
   wstats.qual.qual = sinfo.signal;
   break;
  }

 default:
  wstats.qual.updated |= IW_QUAL_LEVEL_INVALID;
  wstats.qual.updated |= IW_QUAL_QUAL_INVALID;
 }

 wstats.qual.updated |= IW_QUAL_NOISE_INVALID;
 if (sinfo.filled & BIT_ULL(NL80211_STA_INFO_RX_DROP_MISC))
  wstats.discard.misc = sinfo.rx_dropped_misc;
 if (sinfo.filled & BIT_ULL(NL80211_STA_INFO_TX_FAILED))
  wstats.discard.retries = sinfo.tx_failed;

 cfg80211_sinfo_release_content(&sinfo);

 return &wstats;
}
