
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct wireless_dev {struct net_device* netdev; } ;
struct sk_buff {int dummy; } ;
struct net_device {int ifindex; } ;
struct cfg80211_registered_device {int wiphy_idx; int wiphy; } ;
typedef int gfp_t ;


 int ENOBUFS ;
 int ENOMEM ;
 int NL80211_ATTR_FRAME ;
 int NL80211_ATTR_IFINDEX ;
 int NL80211_ATTR_PAD ;
 int NL80211_ATTR_RXMGMT_FLAGS ;
 int NL80211_ATTR_RX_SIGNAL_DBM ;
 int NL80211_ATTR_WDEV ;
 int NL80211_ATTR_WIPHY ;
 int NL80211_ATTR_WIPHY_FREQ ;
 int NL80211_CMD_FRAME ;
 int genlmsg_end (struct sk_buff*,void*) ;
 int genlmsg_unicast (int ,struct sk_buff*,int) ;
 void* nl80211hdr_put (struct sk_buff*,int ,int ,int ,int ) ;
 scalar_t__ nla_put (struct sk_buff*,int ,size_t,int const*) ;
 scalar_t__ nla_put_u32 (struct sk_buff*,int ,int) ;
 scalar_t__ nla_put_u64_64bit (struct sk_buff*,int ,int ,int ) ;
 int nlmsg_free (struct sk_buff*) ;
 struct sk_buff* nlmsg_new (int,int ) ;
 int wdev_id (struct wireless_dev*) ;
 int wiphy_net (int *) ;

int nl80211_send_mgmt(struct cfg80211_registered_device *rdev,
        struct wireless_dev *wdev, u32 nlportid,
        int freq, int sig_dbm,
        const u8 *buf, size_t len, u32 flags, gfp_t gfp)
{
 struct net_device *netdev = wdev->netdev;
 struct sk_buff *msg;
 void *hdr;

 msg = nlmsg_new(100 + len, gfp);
 if (!msg)
  return -ENOMEM;

 hdr = nl80211hdr_put(msg, 0, 0, 0, NL80211_CMD_FRAME);
 if (!hdr) {
  nlmsg_free(msg);
  return -ENOMEM;
 }

 if (nla_put_u32(msg, NL80211_ATTR_WIPHY, rdev->wiphy_idx) ||
     (netdev && nla_put_u32(msg, NL80211_ATTR_IFINDEX,
     netdev->ifindex)) ||
     nla_put_u64_64bit(msg, NL80211_ATTR_WDEV, wdev_id(wdev),
         NL80211_ATTR_PAD) ||
     nla_put_u32(msg, NL80211_ATTR_WIPHY_FREQ, freq) ||
     (sig_dbm &&
      nla_put_u32(msg, NL80211_ATTR_RX_SIGNAL_DBM, sig_dbm)) ||
     nla_put(msg, NL80211_ATTR_FRAME, len, buf) ||
     (flags &&
      nla_put_u32(msg, NL80211_ATTR_RXMGMT_FLAGS, flags)))
  goto nla_put_failure;

 genlmsg_end(msg, hdr);

 return genlmsg_unicast(wiphy_net(&rdev->wiphy), msg, nlportid);

 nla_put_failure:
 nlmsg_free(msg);
 return -ENOBUFS;
}
