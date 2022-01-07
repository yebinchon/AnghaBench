
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct sk_buff {int sk; } ;
struct nlmsghdr {int nlmsg_seq; } ;
struct nlattr {int dummy; } ;
struct netlink_ext_ack {int dummy; } ;
struct net_device {int dummy; } ;
struct net {int dummy; } ;
struct ifinfomsg {scalar_t__ ifi_index; } ;
struct TYPE_2__ {int portid; int sk; } ;


 int EINVAL ;
 int EMSGSIZE ;
 int ENOBUFS ;
 int ENODEV ;
 int GFP_KERNEL ;
 size_t IFLA_EXT_MASK ;
 size_t IFLA_IFNAME ;
 int IFLA_MAX ;
 size_t IFLA_TARGET_NETNSID ;
 int IFNAMSIZ ;
 scalar_t__ IS_ERR (struct net*) ;
 TYPE_1__ NETLINK_CB (struct sk_buff*) ;
 int PTR_ERR (struct net*) ;
 int RTM_NEWLINK ;
 int WARN_ON (int) ;
 struct net_device* __dev_get_by_index (struct net*,scalar_t__) ;
 struct net_device* __dev_get_by_name (struct net*,char*) ;
 int if_nlmsg_size (struct net_device*,int ) ;
 int kfree_skb (struct sk_buff*) ;
 int nla_get_s32 (struct nlattr*) ;
 int nla_get_u32 (struct nlattr*) ;
 int nla_strlcpy (char*,struct nlattr*,int) ;
 struct ifinfomsg* nlmsg_data (struct nlmsghdr*) ;
 struct sk_buff* nlmsg_new (int ,int ) ;
 int put_net (struct net*) ;
 int rtnl_ensure_unique_netns (struct nlattr**,struct netlink_ext_ack*,int) ;
 int rtnl_fill_ifinfo (struct sk_buff*,struct net_device*,struct net*,int ,int ,int ,int ,int ,int ,int ,int *,int ,int,int ) ;
 struct net* rtnl_get_net_ns_capable (int ,int) ;
 int rtnl_unicast (struct sk_buff*,struct net*,int ) ;
 int rtnl_valid_getlink_req (struct sk_buff*,struct nlmsghdr*,struct nlattr**,struct netlink_ext_ack*) ;
 struct net* sock_net (int ) ;

__attribute__((used)) static int rtnl_getlink(struct sk_buff *skb, struct nlmsghdr *nlh,
   struct netlink_ext_ack *extack)
{
 struct net *net = sock_net(skb->sk);
 struct net *tgt_net = net;
 struct ifinfomsg *ifm;
 char ifname[IFNAMSIZ];
 struct nlattr *tb[IFLA_MAX+1];
 struct net_device *dev = ((void*)0);
 struct sk_buff *nskb;
 int netnsid = -1;
 int err;
 u32 ext_filter_mask = 0;

 err = rtnl_valid_getlink_req(skb, nlh, tb, extack);
 if (err < 0)
  return err;

 err = rtnl_ensure_unique_netns(tb, extack, 1);
 if (err < 0)
  return err;

 if (tb[IFLA_TARGET_NETNSID]) {
  netnsid = nla_get_s32(tb[IFLA_TARGET_NETNSID]);
  tgt_net = rtnl_get_net_ns_capable(NETLINK_CB(skb).sk, netnsid);
  if (IS_ERR(tgt_net))
   return PTR_ERR(tgt_net);
 }

 if (tb[IFLA_IFNAME])
  nla_strlcpy(ifname, tb[IFLA_IFNAME], IFNAMSIZ);

 if (tb[IFLA_EXT_MASK])
  ext_filter_mask = nla_get_u32(tb[IFLA_EXT_MASK]);

 err = -EINVAL;
 ifm = nlmsg_data(nlh);
 if (ifm->ifi_index > 0)
  dev = __dev_get_by_index(tgt_net, ifm->ifi_index);
 else if (tb[IFLA_IFNAME])
  dev = __dev_get_by_name(tgt_net, ifname);
 else
  goto out;

 err = -ENODEV;
 if (dev == ((void*)0))
  goto out;

 err = -ENOBUFS;
 nskb = nlmsg_new(if_nlmsg_size(dev, ext_filter_mask), GFP_KERNEL);
 if (nskb == ((void*)0))
  goto out;

 err = rtnl_fill_ifinfo(nskb, dev, net,
          RTM_NEWLINK, NETLINK_CB(skb).portid,
          nlh->nlmsg_seq, 0, 0, ext_filter_mask,
          0, ((void*)0), 0, netnsid, GFP_KERNEL);
 if (err < 0) {

  WARN_ON(err == -EMSGSIZE);
  kfree_skb(nskb);
 } else
  err = rtnl_unicast(nskb, net, NETLINK_CB(skb).portid);
out:
 if (netnsid >= 0)
  put_net(tgt_net);

 return err;
}
