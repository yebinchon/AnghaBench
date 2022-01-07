
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_6__ {struct ieee80211_channel* chan; int width; } ;
struct wireless_dev {int iftype; TYPE_3__ chandef; int wiphy; int mesh_id_len; int beacon_interval; int cac_started; TYPE_2__* current_bss; int ibss_dfs_possible; int ibss_fixed; scalar_t__ netdev; } ;
struct ieee80211_channel {int dummy; } ;
typedef enum cfg80211_chan_mode { ____Placeholder_cfg80211_chan_mode } cfg80211_chan_mode ;
struct TYPE_4__ {struct ieee80211_channel* channel; } ;
struct TYPE_5__ {TYPE_1__ pub; } ;


 int ASSERT_WDEV_LOCK (struct wireless_dev*) ;
 int BIT (int ) ;
 int CHAN_MODE_EXCLUSIVE ;
 int CHAN_MODE_SHARED ;
 int CHAN_MODE_UNDEFINED ;
 int WARN_ON (int) ;
 int cfg80211_chandef_dfs_required (int ,TYPE_3__*,int) ;
 int netif_running (scalar_t__) ;

void
cfg80211_get_chan_state(struct wireless_dev *wdev,
          struct ieee80211_channel **chan,
          enum cfg80211_chan_mode *chanmode,
          u8 *radar_detect)
{
 int ret;

 *chan = ((void*)0);
 *chanmode = CHAN_MODE_UNDEFINED;

 ASSERT_WDEV_LOCK(wdev);

 if (wdev->netdev && !netif_running(wdev->netdev))
  return;

 switch (wdev->iftype) {
 case 141:
  if (wdev->current_bss) {
   *chan = wdev->current_bss->pub.channel;
   *chanmode = (wdev->ibss_fixed &&
         !wdev->ibss_dfs_possible)
      ? CHAN_MODE_SHARED
      : CHAN_MODE_EXCLUSIVE;



   if (wdev->ibss_dfs_possible)
    *radar_detect |= BIT(wdev->chandef.width);
   return;
  }
  break;
 case 131:
 case 134:
  if (wdev->current_bss) {
   *chan = wdev->current_bss->pub.channel;
   *chanmode = CHAN_MODE_SHARED;
   return;
  }
  break;
 case 140:
 case 132:
  if (wdev->cac_started) {
   *chan = wdev->chandef.chan;
   *chanmode = CHAN_MODE_SHARED;
   *radar_detect |= BIT(wdev->chandef.width);
  } else if (wdev->beacon_interval) {
   *chan = wdev->chandef.chan;
   *chanmode = CHAN_MODE_SHARED;

   ret = cfg80211_chandef_dfs_required(wdev->wiphy,
           &wdev->chandef,
           wdev->iftype);
   WARN_ON(ret < 0);
   if (ret > 0)
    *radar_detect |= BIT(wdev->chandef.width);
  }
  return;
 case 138:
  if (wdev->mesh_id_len) {
   *chan = wdev->chandef.chan;
   *chanmode = CHAN_MODE_SHARED;

   ret = cfg80211_chandef_dfs_required(wdev->wiphy,
           &wdev->chandef,
           wdev->iftype);
   WARN_ON(ret < 0);
   if (ret > 0)
    *radar_detect |= BIT(wdev->chandef.width);
  }
  return;
 case 135:
  if (wdev->chandef.chan) {
   *chan = wdev->chandef.chan;
   *chanmode = CHAN_MODE_SHARED;
   return;
  }
  break;
 case 137:
 case 139:
 case 129:
 case 133:
 case 136:

  return;
 case 130:
 case 128:
  WARN_ON(1);
 }
}
