
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


typedef int u32 ;
struct TYPE_12__ {TYPE_1__* chan; } ;
struct TYPE_10__ {TYPE_6__ chandef; } ;
struct TYPE_11__ {TYPE_4__ ibss; } ;
struct wireless_dev {scalar_t__ ssid_len; int ssid; int * connect_keys; TYPE_5__ wext; TYPE_6__ chandef; int ibss_dfs_possible; int ibss_fixed; } ;
struct net_device {struct wireless_dev* ieee80211_ptr; } ;
struct ieee80211_supported_band {int n_bitrates; TYPE_3__* bitrates; } ;
struct TYPE_8__ {struct ieee80211_supported_band** bands; } ;
struct cfg80211_registered_device {TYPE_2__ wiphy; } ;
struct cfg80211_ibss_params {scalar_t__ wep_tx_key; scalar_t__ ssid_len; int ssid; TYPE_6__ chandef; int wep_keys; int userspace_handles_dfs; int channel_fixed; int basic_rates; } ;
struct cfg80211_cached_keys {scalar_t__ def; int params; } ;
typedef enum nl80211_band { ____Placeholder_nl80211_band } nl80211_band ;
struct TYPE_9__ {int flags; } ;
struct TYPE_7__ {int band; } ;


 int ASSERT_RTNL () ;
 int ASSERT_WDEV_LOCK (struct wireless_dev*) ;
 int BIT (int) ;
 int EALREADY ;
 int EINVAL ;
 int IEEE80211_RATE_MANDATORY_A ;
 int IEEE80211_RATE_MANDATORY_B ;
 int NL80211_BAND_5GHZ ;
 int NL80211_BAND_6GHZ ;
 scalar_t__ WARN_ON (int *) ;
 int kzfree (int *) ;
 int memcpy (int ,int ,scalar_t__) ;
 int rdev_join_ibss (struct cfg80211_registered_device*,struct net_device*,struct cfg80211_ibss_params*) ;

int __cfg80211_join_ibss(struct cfg80211_registered_device *rdev,
    struct net_device *dev,
    struct cfg80211_ibss_params *params,
    struct cfg80211_cached_keys *connkeys)
{
 struct wireless_dev *wdev = dev->ieee80211_ptr;
 int err;

 ASSERT_RTNL();
 ASSERT_WDEV_LOCK(wdev);

 if (wdev->ssid_len)
  return -EALREADY;

 if (!params->basic_rates) {





  struct ieee80211_supported_band *sband;
  enum nl80211_band band;
  u32 flag;
  int j;

  band = params->chandef.chan->band;
  if (band == NL80211_BAND_5GHZ ||
      band == NL80211_BAND_6GHZ)
   flag = IEEE80211_RATE_MANDATORY_A;
  else
   flag = IEEE80211_RATE_MANDATORY_B;

  sband = rdev->wiphy.bands[band];
  for (j = 0; j < sband->n_bitrates; j++) {
   if (sband->bitrates[j].flags & flag)
    params->basic_rates |= BIT(j);
  }
 }

 if (WARN_ON(connkeys && connkeys->def < 0))
  return -EINVAL;

 if (WARN_ON(wdev->connect_keys))
  kzfree(wdev->connect_keys);
 wdev->connect_keys = connkeys;

 wdev->ibss_fixed = params->channel_fixed;
 wdev->ibss_dfs_possible = params->userspace_handles_dfs;
 wdev->chandef = params->chandef;
 if (connkeys) {
  params->wep_keys = connkeys->params;
  params->wep_tx_key = connkeys->def;
 }




 err = rdev_join_ibss(rdev, dev, params);
 if (err) {
  wdev->connect_keys = ((void*)0);
  return err;
 }

 memcpy(wdev->ssid, params->ssid, params->ssid_len);
 wdev->ssid_len = params->ssid_len;

 return 0;
}
