
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct sk_buff {int dummy; } ;
struct nlmsghdr {int dummy; } ;
struct net_device {scalar_t__ ifindex; scalar_t__ mtu; int operstate; int dev_addr; scalar_t__ addr_len; int name; int type; } ;
struct inet6_dev {struct net_device* dev; } ;
struct ifinfomsg {scalar_t__ ifi_index; scalar_t__ ifi_change; int ifi_flags; int ifi_type; scalar_t__ __ifi_pad; int ifi_family; } ;


 int AF_INET6 ;
 int EMSGSIZE ;
 int IFLA_ADDRESS ;
 int IFLA_IFNAME ;
 int IFLA_LINK ;
 int IFLA_MTU ;
 int IFLA_OPERSTATE ;
 int IFLA_PROTINFO ;
 int IF_OPER_DOWN ;
 int dev_get_flags (struct net_device*) ;
 scalar_t__ dev_get_iflink (struct net_device*) ;
 scalar_t__ inet6_fill_ifla6_attrs (struct sk_buff*,struct inet6_dev*,int ) ;
 scalar_t__ netif_running (struct net_device*) ;
 int nla_nest_end (struct sk_buff*,void*) ;
 void* nla_nest_start_noflag (struct sk_buff*,int ) ;
 scalar_t__ nla_put (struct sk_buff*,int ,scalar_t__,int ) ;
 scalar_t__ nla_put_string (struct sk_buff*,int ,int ) ;
 scalar_t__ nla_put_u32 (struct sk_buff*,int ,scalar_t__) ;
 scalar_t__ nla_put_u8 (struct sk_buff*,int ,int ) ;
 int nlmsg_cancel (struct sk_buff*,struct nlmsghdr*) ;
 struct ifinfomsg* nlmsg_data (struct nlmsghdr*) ;
 int nlmsg_end (struct sk_buff*,struct nlmsghdr*) ;
 struct nlmsghdr* nlmsg_put (struct sk_buff*,int ,int ,int,int,unsigned int) ;

__attribute__((used)) static int inet6_fill_ifinfo(struct sk_buff *skb, struct inet6_dev *idev,
        u32 portid, u32 seq, int event, unsigned int flags)
{
 struct net_device *dev = idev->dev;
 struct ifinfomsg *hdr;
 struct nlmsghdr *nlh;
 void *protoinfo;

 nlh = nlmsg_put(skb, portid, seq, event, sizeof(*hdr), flags);
 if (!nlh)
  return -EMSGSIZE;

 hdr = nlmsg_data(nlh);
 hdr->ifi_family = AF_INET6;
 hdr->__ifi_pad = 0;
 hdr->ifi_type = dev->type;
 hdr->ifi_index = dev->ifindex;
 hdr->ifi_flags = dev_get_flags(dev);
 hdr->ifi_change = 0;

 if (nla_put_string(skb, IFLA_IFNAME, dev->name) ||
     (dev->addr_len &&
      nla_put(skb, IFLA_ADDRESS, dev->addr_len, dev->dev_addr)) ||
     nla_put_u32(skb, IFLA_MTU, dev->mtu) ||
     (dev->ifindex != dev_get_iflink(dev) &&
      nla_put_u32(skb, IFLA_LINK, dev_get_iflink(dev))) ||
     nla_put_u8(skb, IFLA_OPERSTATE,
         netif_running(dev) ? dev->operstate : IF_OPER_DOWN))
  goto nla_put_failure;
 protoinfo = nla_nest_start_noflag(skb, IFLA_PROTINFO);
 if (!protoinfo)
  goto nla_put_failure;

 if (inet6_fill_ifla6_attrs(skb, idev, 0) < 0)
  goto nla_put_failure;

 nla_nest_end(skb, protoinfo);
 nlmsg_end(skb, nlh);
 return 0;

nla_put_failure:
 nlmsg_cancel(skb, nlh);
 return -EMSGSIZE;
}
