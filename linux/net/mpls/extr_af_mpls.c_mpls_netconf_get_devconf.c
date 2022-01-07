
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff {int sk; } ;
struct nlmsghdr {int nlmsg_seq; } ;
struct nlattr {int dummy; } ;
struct netlink_ext_ack {int dummy; } ;
struct net_device {int dummy; } ;
struct net {int dummy; } ;
struct mpls_dev {int dummy; } ;
struct TYPE_2__ {int portid; } ;


 int EINVAL ;
 int EMSGSIZE ;
 int ENOBUFS ;
 int GFP_KERNEL ;
 int NETCONFA_ALL ;
 size_t NETCONFA_IFINDEX ;
 int NETCONFA_MAX ;
 TYPE_1__ NETLINK_CB (struct sk_buff*) ;
 int RTM_NEWNETCONF ;
 int WARN_ON (int) ;
 struct net_device* __dev_get_by_index (struct net*,int) ;
 int kfree_skb (struct sk_buff*) ;
 struct mpls_dev* mpls_dev_get (struct net_device*) ;
 int mpls_netconf_fill_devconf (struct sk_buff*,struct mpls_dev*,int ,int ,int ,int ,int ) ;
 int mpls_netconf_msgsize_devconf (int ) ;
 int mpls_netconf_valid_get_req (struct sk_buff*,struct nlmsghdr*,struct nlattr**,struct netlink_ext_ack*) ;
 int nla_get_s32 (struct nlattr*) ;
 struct sk_buff* nlmsg_new (int ,int ) ;
 int rtnl_unicast (struct sk_buff*,struct net*,int ) ;
 struct net* sock_net (int ) ;

__attribute__((used)) static int mpls_netconf_get_devconf(struct sk_buff *in_skb,
        struct nlmsghdr *nlh,
        struct netlink_ext_ack *extack)
{
 struct net *net = sock_net(in_skb->sk);
 struct nlattr *tb[NETCONFA_MAX + 1];
 struct net_device *dev;
 struct mpls_dev *mdev;
 struct sk_buff *skb;
 int ifindex;
 int err;

 err = mpls_netconf_valid_get_req(in_skb, nlh, tb, extack);
 if (err < 0)
  goto errout;

 err = -EINVAL;
 if (!tb[NETCONFA_IFINDEX])
  goto errout;

 ifindex = nla_get_s32(tb[NETCONFA_IFINDEX]);
 dev = __dev_get_by_index(net, ifindex);
 if (!dev)
  goto errout;

 mdev = mpls_dev_get(dev);
 if (!mdev)
  goto errout;

 err = -ENOBUFS;
 skb = nlmsg_new(mpls_netconf_msgsize_devconf(NETCONFA_ALL), GFP_KERNEL);
 if (!skb)
  goto errout;

 err = mpls_netconf_fill_devconf(skb, mdev,
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
 return err;
}
