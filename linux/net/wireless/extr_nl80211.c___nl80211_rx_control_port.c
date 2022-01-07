
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
typedef int u16 ;
struct wireless_dev {int conn_owner_nlportid; int wiphy; } ;
struct sk_buff {int len; int protocol; } ;
struct nlattr {int dummy; } ;
struct net_device {int ifindex; struct wireless_dev* ieee80211_ptr; } ;
struct ethhdr {int * h_source; } ;
struct cfg80211_registered_device {int wiphy; int wiphy_idx; } ;
typedef int gfp_t ;


 int ENOBUFS ;
 int ENOENT ;
 int ENOMEM ;
 int ETH_ALEN ;
 int NL80211_ATTR_CONTROL_PORT_ETHERTYPE ;
 int NL80211_ATTR_CONTROL_PORT_NO_ENCRYPT ;
 int NL80211_ATTR_FRAME ;
 int NL80211_ATTR_IFINDEX ;
 int NL80211_ATTR_MAC ;
 int NL80211_ATTR_PAD ;
 int NL80211_ATTR_WDEV ;
 int NL80211_ATTR_WIPHY ;
 int NL80211_CMD_CONTROL_PORT_FRAME ;
 int READ_ONCE (int ) ;
 int be16_to_cpu (int ) ;
 struct ethhdr* eth_hdr (struct sk_buff*) ;
 int genlmsg_end (struct sk_buff*,void*) ;
 int genlmsg_unicast (int ,struct sk_buff*,int ) ;
 void* nl80211hdr_put (struct sk_buff*,int ,int ,int ,int ) ;
 int nla_data (struct nlattr*) ;
 scalar_t__ nla_put (struct sk_buff*,int ,int ,int const*) ;
 scalar_t__ nla_put_flag (struct sk_buff*,int ) ;
 scalar_t__ nla_put_u16 (struct sk_buff*,int ,int ) ;
 scalar_t__ nla_put_u32 (struct sk_buff*,int ,int ) ;
 scalar_t__ nla_put_u64_64bit (struct sk_buff*,int ,int ,int ) ;
 struct nlattr* nla_reserve (struct sk_buff*,int ,int ) ;
 int nlmsg_free (struct sk_buff*) ;
 struct sk_buff* nlmsg_new (int ,int ) ;
 int skb_copy_bits (struct sk_buff*,int ,int ,int ) ;
 int wdev_id (struct wireless_dev*) ;
 int wiphy_net (int *) ;
 struct cfg80211_registered_device* wiphy_to_rdev (int ) ;

__attribute__((used)) static int __nl80211_rx_control_port(struct net_device *dev,
         struct sk_buff *skb,
         bool unencrypted, gfp_t gfp)
{
 struct wireless_dev *wdev = dev->ieee80211_ptr;
 struct cfg80211_registered_device *rdev = wiphy_to_rdev(wdev->wiphy);
 struct ethhdr *ehdr = eth_hdr(skb);
 const u8 *addr = ehdr->h_source;
 u16 proto = be16_to_cpu(skb->protocol);
 struct sk_buff *msg;
 void *hdr;
 struct nlattr *frame;

 u32 nlportid = READ_ONCE(wdev->conn_owner_nlportid);

 if (!nlportid)
  return -ENOENT;

 msg = nlmsg_new(100 + skb->len, gfp);
 if (!msg)
  return -ENOMEM;

 hdr = nl80211hdr_put(msg, 0, 0, 0, NL80211_CMD_CONTROL_PORT_FRAME);
 if (!hdr) {
  nlmsg_free(msg);
  return -ENOBUFS;
 }

 if (nla_put_u32(msg, NL80211_ATTR_WIPHY, rdev->wiphy_idx) ||
     nla_put_u32(msg, NL80211_ATTR_IFINDEX, dev->ifindex) ||
     nla_put_u64_64bit(msg, NL80211_ATTR_WDEV, wdev_id(wdev),
         NL80211_ATTR_PAD) ||
     nla_put(msg, NL80211_ATTR_MAC, ETH_ALEN, addr) ||
     nla_put_u16(msg, NL80211_ATTR_CONTROL_PORT_ETHERTYPE, proto) ||
     (unencrypted && nla_put_flag(msg,
      NL80211_ATTR_CONTROL_PORT_NO_ENCRYPT)))
  goto nla_put_failure;

 frame = nla_reserve(msg, NL80211_ATTR_FRAME, skb->len);
 if (!frame)
  goto nla_put_failure;

 skb_copy_bits(skb, 0, nla_data(frame), skb->len);
 genlmsg_end(msg, hdr);

 return genlmsg_unicast(wiphy_net(&rdev->wiphy), msg, nlportid);

 nla_put_failure:
 nlmsg_free(msg);
 return -ENOBUFS;
}
