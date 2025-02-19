
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct wireless_dev {int iftype; TYPE_1__* current_bss; int const* ssid; int const ssid_len; int use_4addr; struct net_device* netdev; } ;
struct sk_buff {int dummy; } ;
struct net_device {int ifindex; int name; } ;
struct cfg80211_txq_stats {int dummy; } ;
struct cfg80211_registered_device {int wiphy_idx; int devlist_generation; TYPE_2__* ops; } ;
struct cfg80211_chan_def {int dummy; } ;
typedef enum nl80211_commands { ____Placeholder_nl80211_commands } nl80211_commands ;
struct TYPE_4__ {scalar_t__ get_txq_stats; scalar_t__ get_tx_power; scalar_t__ get_channel; } ;
struct TYPE_3__ {int pub; } ;


 int DBM_TO_MBM (int) ;
 int EMSGSIZE ;
 int const ETH_ALEN ;
 int NL80211_ATTR_4ADDR ;
 int NL80211_ATTR_GENERATION ;
 int NL80211_ATTR_IFINDEX ;
 int NL80211_ATTR_IFNAME ;
 int NL80211_ATTR_IFTYPE ;
 int NL80211_ATTR_MAC ;
 int NL80211_ATTR_PAD ;
 int NL80211_ATTR_SSID ;
 int NL80211_ATTR_TXQ_STATS ;
 int NL80211_ATTR_WDEV ;
 int NL80211_ATTR_WIPHY ;
 int NL80211_ATTR_WIPHY_TX_POWER_LEVEL ;
 int NL80211_CMD_DEL_INTERFACE ;
 int NL80211_CMD_NEW_INTERFACE ;
 int NL80211_CMD_SET_INTERFACE ;




 int WARN_ON (int) ;
 int WLAN_EID_SSID ;
 int cfg80211_rdev_list_generation ;
 int genlmsg_cancel (struct sk_buff*,void*) ;
 int genlmsg_end (struct sk_buff*,void*) ;
 int * ieee80211_bss_get_ie (int *,int ) ;
 int nl80211_put_txq_stats (struct sk_buff*,struct cfg80211_txq_stats*,int ) ;
 scalar_t__ nl80211_send_chandef (struct sk_buff*,struct cfg80211_chan_def*) ;
 void* nl80211hdr_put (struct sk_buff*,int ,int ,int,int) ;
 scalar_t__ nla_put (struct sk_buff*,int ,int const,int const*) ;
 scalar_t__ nla_put_string (struct sk_buff*,int ,int ) ;
 scalar_t__ nla_put_u32 (struct sk_buff*,int ,int) ;
 scalar_t__ nla_put_u64_64bit (struct sk_buff*,int ,int ,int ) ;
 scalar_t__ nla_put_u8 (struct sk_buff*,int ,int ) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;
 int rdev_get_channel (struct cfg80211_registered_device*,struct wireless_dev*,struct cfg80211_chan_def*) ;
 int rdev_get_tx_power (struct cfg80211_registered_device*,struct wireless_dev*,int*) ;
 int rdev_get_txq_stats (struct cfg80211_registered_device*,struct wireless_dev*,struct cfg80211_txq_stats*) ;
 int const* wdev_address (struct wireless_dev*) ;
 int wdev_id (struct wireless_dev*) ;
 int wdev_lock (struct wireless_dev*) ;
 int wdev_unlock (struct wireless_dev*) ;

__attribute__((used)) static int nl80211_send_iface(struct sk_buff *msg, u32 portid, u32 seq, int flags,
         struct cfg80211_registered_device *rdev,
         struct wireless_dev *wdev,
         enum nl80211_commands cmd)
{
 struct net_device *dev = wdev->netdev;
 void *hdr;

 WARN_ON(cmd != NL80211_CMD_NEW_INTERFACE &&
  cmd != NL80211_CMD_DEL_INTERFACE &&
  cmd != NL80211_CMD_SET_INTERFACE);

 hdr = nl80211hdr_put(msg, portid, seq, flags, cmd);
 if (!hdr)
  return -1;

 if (dev &&
     (nla_put_u32(msg, NL80211_ATTR_IFINDEX, dev->ifindex) ||
      nla_put_string(msg, NL80211_ATTR_IFNAME, dev->name)))
  goto nla_put_failure;

 if (nla_put_u32(msg, NL80211_ATTR_WIPHY, rdev->wiphy_idx) ||
     nla_put_u32(msg, NL80211_ATTR_IFTYPE, wdev->iftype) ||
     nla_put_u64_64bit(msg, NL80211_ATTR_WDEV, wdev_id(wdev),
         NL80211_ATTR_PAD) ||
     nla_put(msg, NL80211_ATTR_MAC, ETH_ALEN, wdev_address(wdev)) ||
     nla_put_u32(msg, NL80211_ATTR_GENERATION,
   rdev->devlist_generation ^
   (cfg80211_rdev_list_generation << 2)) ||
     nla_put_u8(msg, NL80211_ATTR_4ADDR, wdev->use_4addr))
  goto nla_put_failure;

 if (rdev->ops->get_channel) {
  int ret;
  struct cfg80211_chan_def chandef = {};

  ret = rdev_get_channel(rdev, wdev, &chandef);
  if (ret == 0) {
   if (nl80211_send_chandef(msg, &chandef))
    goto nla_put_failure;
  }
 }

 if (rdev->ops->get_tx_power) {
  int dbm, ret;

  ret = rdev_get_tx_power(rdev, wdev, &dbm);
  if (ret == 0 &&
      nla_put_u32(msg, NL80211_ATTR_WIPHY_TX_POWER_LEVEL,
    DBM_TO_MBM(dbm)))
   goto nla_put_failure;
 }

 wdev_lock(wdev);
 switch (wdev->iftype) {
 case 130:
  if (wdev->ssid_len &&
      nla_put(msg, NL80211_ATTR_SSID, wdev->ssid_len, wdev->ssid))
   goto nla_put_failure_locked;
  break;
 case 128:
 case 129:
 case 131: {
  const u8 *ssid_ie;
  if (!wdev->current_bss)
   break;
  rcu_read_lock();
  ssid_ie = ieee80211_bss_get_ie(&wdev->current_bss->pub,
            WLAN_EID_SSID);
  if (ssid_ie &&
      nla_put(msg, NL80211_ATTR_SSID, ssid_ie[1], ssid_ie + 2))
   goto nla_put_failure_rcu_locked;
  rcu_read_unlock();
  break;
  }
 default:

  break;
 }
 wdev_unlock(wdev);

 if (rdev->ops->get_txq_stats) {
  struct cfg80211_txq_stats txqstats = {};
  int ret = rdev_get_txq_stats(rdev, wdev, &txqstats);

  if (ret == 0 &&
      !nl80211_put_txq_stats(msg, &txqstats,
        NL80211_ATTR_TXQ_STATS))
   goto nla_put_failure;
 }

 genlmsg_end(msg, hdr);
 return 0;

 nla_put_failure_rcu_locked:
 rcu_read_unlock();
 nla_put_failure_locked:
 wdev_unlock(wdev);
 nla_put_failure:
 genlmsg_cancel(msg, hdr);
 return -EMSGSIZE;
}
