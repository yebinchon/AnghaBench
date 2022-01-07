
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct sk_buff {int sk; } ;
struct nlmsghdr {int nlmsg_seq; } ;
struct netlink_ext_ack {int dummy; } ;
struct net_device {int dummy; } ;
struct net {int dummy; } ;
struct if_stats_msg {scalar_t__ ifindex; int filter_mask; } ;
struct TYPE_2__ {int portid; } ;


 int EINVAL ;
 int EMSGSIZE ;
 int ENOBUFS ;
 int ENODEV ;
 int GFP_KERNEL ;
 TYPE_1__ NETLINK_CB (struct sk_buff*) ;
 int RTM_NEWSTATS ;
 int WARN_ON (int) ;
 struct net_device* __dev_get_by_index (struct net*,scalar_t__) ;
 int if_nlmsg_stats_size (struct net_device*,int ) ;
 int kfree_skb (struct sk_buff*) ;
 int netlink_strict_get_check (struct sk_buff*) ;
 struct if_stats_msg* nlmsg_data (struct nlmsghdr*) ;
 struct sk_buff* nlmsg_new (int ,int ) ;
 int rtnl_fill_statsinfo (struct sk_buff*,struct net_device*,int ,int ,int ,int ,int ,int ,int*,int*) ;
 int rtnl_unicast (struct sk_buff*,struct net*,int ) ;
 int rtnl_valid_stats_req (struct nlmsghdr*,int ,int,struct netlink_ext_ack*) ;
 struct net* sock_net (int ) ;

__attribute__((used)) static int rtnl_stats_get(struct sk_buff *skb, struct nlmsghdr *nlh,
     struct netlink_ext_ack *extack)
{
 struct net *net = sock_net(skb->sk);
 struct net_device *dev = ((void*)0);
 int idxattr = 0, prividx = 0;
 struct if_stats_msg *ifsm;
 struct sk_buff *nskb;
 u32 filter_mask;
 int err;

 err = rtnl_valid_stats_req(nlh, netlink_strict_get_check(skb),
       0, extack);
 if (err)
  return err;

 ifsm = nlmsg_data(nlh);
 if (ifsm->ifindex > 0)
  dev = __dev_get_by_index(net, ifsm->ifindex);
 else
  return -EINVAL;

 if (!dev)
  return -ENODEV;

 filter_mask = ifsm->filter_mask;
 if (!filter_mask)
  return -EINVAL;

 nskb = nlmsg_new(if_nlmsg_stats_size(dev, filter_mask), GFP_KERNEL);
 if (!nskb)
  return -ENOBUFS;

 err = rtnl_fill_statsinfo(nskb, dev, RTM_NEWSTATS,
      NETLINK_CB(skb).portid, nlh->nlmsg_seq, 0,
      0, filter_mask, &idxattr, &prividx);
 if (err < 0) {

  WARN_ON(err == -EMSGSIZE);
  kfree_skb(nskb);
 } else {
  err = rtnl_unicast(nskb, net, NETLINK_CB(skb).portid);
 }

 return err;
}
