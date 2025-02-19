
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_11__ {struct ieee80211_channel* chan; int center_freq1; int width; } ;
struct wireless_dev {scalar_t__ iftype; int beacon_interval; TYPE_4__ chandef; scalar_t__ mesh_id_len; int ssid; TYPE_4__ preset_chandef; } ;
struct net_device {struct wireless_dev* ieee80211_ptr; } ;
struct mesh_setup {int beacon_interval; TYPE_4__ chandef; scalar_t__ mesh_id_len; int mesh_id; int userspace_handles_dfs; int basic_rates; scalar_t__ is_secure; } ;
struct mesh_config {int dummy; } ;
struct ieee80211_supported_band {int n_channels; int n_bitrates; TYPE_2__* bitrates; struct ieee80211_channel* channels; } ;
struct ieee80211_channel {int flags; size_t band; int center_freq; } ;
struct TYPE_10__ {int flags; struct ieee80211_supported_band** bands; } ;
struct cfg80211_registered_device {TYPE_3__ wiphy; TYPE_1__* ops; } ;
typedef enum nl80211_bss_scan_width { ____Placeholder_nl80211_bss_scan_width } nl80211_bss_scan_width ;
typedef enum nl80211_band { ____Placeholder_nl80211_band } nl80211_band ;
struct TYPE_9__ {int bitrate; } ;
struct TYPE_8__ {int join_mesh; } ;


 int ASSERT_WDEV_LOCK (struct wireless_dev*) ;
 int BIT (int) ;
 int BUILD_BUG_ON (int) ;
 int EALREADY ;
 int EINVAL ;
 int EOPNOTSUPP ;
 int IEEE80211_CHAN_DISABLED ;
 int IEEE80211_CHAN_NO_IR ;
 int IEEE80211_CHAN_RADAR ;
 scalar_t__ IEEE80211_MAX_MESH_ID_LEN ;
 scalar_t__ IEEE80211_MAX_SSID_LEN ;
 size_t NL80211_BAND_2GHZ ;
 int NL80211_CHAN_WIDTH_20_NOHT ;
 scalar_t__ NL80211_IFTYPE_MESH_POINT ;
 int NUM_NL80211_BANDS ;
 int WIPHY_FLAG_MESH_AUTH ;
 int cfg80211_chandef_dfs_required (TYPE_3__*,TYPE_4__*,scalar_t__) ;
 int cfg80211_chandef_to_scan_width (TYPE_4__*) ;
 int cfg80211_reg_can_beacon (TYPE_3__*,TYPE_4__*,scalar_t__) ;
 int ieee80211_mandatory_rates (struct ieee80211_supported_band*,int) ;
 int memcpy (int ,int ,scalar_t__) ;
 int rdev_join_mesh (struct cfg80211_registered_device*,struct net_device*,struct mesh_config const*,struct mesh_setup*) ;

int __cfg80211_join_mesh(struct cfg80211_registered_device *rdev,
    struct net_device *dev,
    struct mesh_setup *setup,
    const struct mesh_config *conf)
{
 struct wireless_dev *wdev = dev->ieee80211_ptr;
 int err;

 BUILD_BUG_ON(IEEE80211_MAX_SSID_LEN != IEEE80211_MAX_MESH_ID_LEN);

 ASSERT_WDEV_LOCK(wdev);

 if (dev->ieee80211_ptr->iftype != NL80211_IFTYPE_MESH_POINT)
  return -EOPNOTSUPP;

 if (!(rdev->wiphy.flags & WIPHY_FLAG_MESH_AUTH) &&
       setup->is_secure)
  return -EOPNOTSUPP;

 if (wdev->mesh_id_len)
  return -EALREADY;

 if (!setup->mesh_id_len)
  return -EINVAL;

 if (!rdev->ops->join_mesh)
  return -EOPNOTSUPP;

 if (!setup->chandef.chan) {

  setup->chandef = wdev->preset_chandef;
 }

 if (!setup->chandef.chan) {

  enum nl80211_band band;

  for (band = 0; band < NUM_NL80211_BANDS; band++) {
   struct ieee80211_supported_band *sband;
   struct ieee80211_channel *chan;
   int i;

   sband = rdev->wiphy.bands[band];
   if (!sband)
    continue;

   for (i = 0; i < sband->n_channels; i++) {
    chan = &sband->channels[i];
    if (chan->flags & (IEEE80211_CHAN_NO_IR |
         IEEE80211_CHAN_DISABLED |
         IEEE80211_CHAN_RADAR))
     continue;
    setup->chandef.chan = chan;
    break;
   }

   if (setup->chandef.chan)
    break;
  }


  if (!setup->chandef.chan)
   return -EINVAL;

  setup->chandef.width = NL80211_CHAN_WIDTH_20_NOHT;
  setup->chandef.center_freq1 = setup->chandef.chan->center_freq;
 }





 if (!setup->basic_rates) {
  enum nl80211_bss_scan_width scan_width;
  struct ieee80211_supported_band *sband =
    rdev->wiphy.bands[setup->chandef.chan->band];

  if (setup->chandef.chan->band == NL80211_BAND_2GHZ) {
   int i;
   for (i = 0; i < sband->n_bitrates; i++) {
    if (sband->bitrates[i].bitrate == 10) {
     setup->basic_rates = BIT(i);
     break;
    }
   }
  } else {
   scan_width = cfg80211_chandef_to_scan_width(&setup->chandef);
   setup->basic_rates = ieee80211_mandatory_rates(sband,
               scan_width);
  }
 }

 err = cfg80211_chandef_dfs_required(&rdev->wiphy,
         &setup->chandef,
         NL80211_IFTYPE_MESH_POINT);
 if (err < 0)
  return err;
 if (err > 0 && !setup->userspace_handles_dfs)
  return -EINVAL;

 if (!cfg80211_reg_can_beacon(&rdev->wiphy, &setup->chandef,
         NL80211_IFTYPE_MESH_POINT))
  return -EINVAL;

 err = rdev_join_mesh(rdev, dev, conf, setup);
 if (!err) {
  memcpy(wdev->ssid, setup->mesh_id, setup->mesh_id_len);
  wdev->mesh_id_len = setup->mesh_id_len;
  wdev->chandef = setup->chandef;
  wdev->beacon_interval = setup->beacon_interval;
 }

 return err;
}
