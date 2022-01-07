
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sk_buff {int sk; } ;
struct nlmsghdr {int nlmsg_seq; } ;
struct nlattr {int dummy; } ;
struct netlink_ext_ack {int dummy; } ;
struct net_device {int dummy; } ;
struct TYPE_3__ {struct ipv6_devconf* devconf_dflt; struct ipv6_devconf* devconf_all; } ;
struct net {TYPE_1__ ipv6; } ;
struct ipv6_devconf {int dummy; } ;
struct inet6_dev {struct ipv6_devconf cnf; } ;
struct TYPE_4__ {int portid; } ;


 int EINVAL ;
 int EMSGSIZE ;
 int ENOBUFS ;
 int GFP_KERNEL ;
 int NETCONFA_ALL ;
 size_t NETCONFA_IFINDEX ;


 int NETCONFA_MAX ;
 TYPE_2__ NETLINK_CB (struct sk_buff*) ;
 int RTM_NEWNETCONF ;
 int WARN_ON (int) ;
 struct net_device* dev_get_by_index (struct net*,int) ;
 int dev_put (struct net_device*) ;
 struct inet6_dev* in6_dev_get (struct net_device*) ;
 int in6_dev_put (struct inet6_dev*) ;
 int inet6_netconf_fill_devconf (struct sk_buff*,int,struct ipv6_devconf*,int ,int ,int ,int ,int ) ;
 int inet6_netconf_msgsize_devconf (int ) ;
 int inet6_netconf_valid_get_req (struct sk_buff*,struct nlmsghdr*,struct nlattr**,struct netlink_ext_ack*) ;
 int kfree_skb (struct sk_buff*) ;
 int nla_get_s32 (struct nlattr*) ;
 struct sk_buff* nlmsg_new (int ,int ) ;
 int rtnl_unicast (struct sk_buff*,struct net*,int ) ;
 struct net* sock_net (int ) ;

__attribute__((used)) static int inet6_netconf_get_devconf(struct sk_buff *in_skb,
         struct nlmsghdr *nlh,
         struct netlink_ext_ack *extack)
{
 struct net *net = sock_net(in_skb->sk);
 struct nlattr *tb[NETCONFA_MAX+1];
 struct inet6_dev *in6_dev = ((void*)0);
 struct net_device *dev = ((void*)0);
 struct sk_buff *skb;
 struct ipv6_devconf *devconf;
 int ifindex;
 int err;

 err = inet6_netconf_valid_get_req(in_skb, nlh, tb, extack);
 if (err < 0)
  return err;

 if (!tb[NETCONFA_IFINDEX])
  return -EINVAL;

 err = -EINVAL;
 ifindex = nla_get_s32(tb[NETCONFA_IFINDEX]);
 switch (ifindex) {
 case 129:
  devconf = net->ipv6.devconf_all;
  break;
 case 128:
  devconf = net->ipv6.devconf_dflt;
  break;
 default:
  dev = dev_get_by_index(net, ifindex);
  if (!dev)
   return -EINVAL;
  in6_dev = in6_dev_get(dev);
  if (!in6_dev)
   goto errout;
  devconf = &in6_dev->cnf;
  break;
 }

 err = -ENOBUFS;
 skb = nlmsg_new(inet6_netconf_msgsize_devconf(NETCONFA_ALL), GFP_KERNEL);
 if (!skb)
  goto errout;

 err = inet6_netconf_fill_devconf(skb, ifindex, devconf,
      NETLINK_CB(in_skb).portid,
      nlh->nlmsg_seq, RTM_NEWNETCONF, 0,
      NETCONFA_ALL);
 if (err < 0) {

  WARN_ON(err == -EMSGSIZE);
  kfree_skb(skb);
  goto errout;
 }
 err = rtnl_unicast(skb, net, NETLINK_CB(in_skb).portid);
errout:
 if (in6_dev)
  in6_dev_put(in6_dev);
 if (dev)
  dev_put(dev);
 return err;
}
