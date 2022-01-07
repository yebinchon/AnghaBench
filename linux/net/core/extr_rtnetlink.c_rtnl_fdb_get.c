
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u16 ;
struct sk_buff {int sk; } ;
struct nlmsghdr {int nlmsg_seq; } ;
struct nlattr {int dummy; } ;
struct netlink_ext_ack {int dummy; } ;
struct net_device_ops {int (* ndo_fdb_get ) (struct sk_buff*,struct nlattr**,struct net_device*,int*,int ,int ,int ,struct netlink_ext_ack*) ;} ;
struct net_device {int priv_flags; struct net_device_ops* netdev_ops; } ;
struct net {int dummy; } ;
struct TYPE_2__ {int portid; } ;


 int EINVAL ;
 int ENOBUFS ;
 int ENODEV ;
 int EOPNOTSUPP ;
 int GFP_KERNEL ;
 int IFF_BRIDGE_PORT ;
 int NDA_MAX ;
 TYPE_1__ NETLINK_CB (struct sk_buff*) ;
 int NLMSG_GOODSIZE ;
 int NL_SET_ERR_MSG (struct netlink_ext_ack*,char*) ;
 int NTF_MASTER ;
 int NTF_SELF ;
 struct net_device* __dev_get_by_index (struct net*,int) ;
 int kfree_skb (struct sk_buff*) ;
 struct net_device* netdev_master_upper_dev_get (struct net_device*) ;
 struct sk_buff* nlmsg_new (int ,int ) ;
 int rtnl_unicast (struct sk_buff*,struct net*,int ) ;
 struct net* sock_net (int ) ;
 int stub1 (struct sk_buff*,struct nlattr**,struct net_device*,int*,int ,int ,int ,struct netlink_ext_ack*) ;
 int valid_fdb_get_strict (struct nlmsghdr*,struct nlattr**,int*,int*,int*,int**,int *,struct netlink_ext_ack*) ;

__attribute__((used)) static int rtnl_fdb_get(struct sk_buff *in_skb, struct nlmsghdr *nlh,
   struct netlink_ext_ack *extack)
{
 struct net_device *dev = ((void*)0), *br_dev = ((void*)0);
 const struct net_device_ops *ops = ((void*)0);
 struct net *net = sock_net(in_skb->sk);
 struct nlattr *tb[NDA_MAX + 1];
 struct sk_buff *skb;
 int brport_idx = 0;
 u8 ndm_flags = 0;
 int br_idx = 0;
 u8 *addr = ((void*)0);
 u16 vid = 0;
 int err;

 err = valid_fdb_get_strict(nlh, tb, &ndm_flags, &br_idx,
       &brport_idx, &addr, &vid, extack);
 if (err < 0)
  return err;

 if (!addr) {
  NL_SET_ERR_MSG(extack, "Missing lookup address for fdb get request");
  return -EINVAL;
 }

 if (brport_idx) {
  dev = __dev_get_by_index(net, brport_idx);
  if (!dev) {
   NL_SET_ERR_MSG(extack, "Unknown device ifindex");
   return -ENODEV;
  }
 }

 if (br_idx) {
  if (dev) {
   NL_SET_ERR_MSG(extack, "Master and device are mutually exclusive");
   return -EINVAL;
  }

  br_dev = __dev_get_by_index(net, br_idx);
  if (!br_dev) {
   NL_SET_ERR_MSG(extack, "Invalid master ifindex");
   return -EINVAL;
  }
  ops = br_dev->netdev_ops;
 }

 if (dev) {
  if (!ndm_flags || (ndm_flags & NTF_MASTER)) {
   if (!(dev->priv_flags & IFF_BRIDGE_PORT)) {
    NL_SET_ERR_MSG(extack, "Device is not a bridge port");
    return -EINVAL;
   }
   br_dev = netdev_master_upper_dev_get(dev);
   if (!br_dev) {
    NL_SET_ERR_MSG(extack, "Master of device not found");
    return -EINVAL;
   }
   ops = br_dev->netdev_ops;
  } else {
   if (!(ndm_flags & NTF_SELF)) {
    NL_SET_ERR_MSG(extack, "Missing NTF_SELF");
    return -EINVAL;
   }
   ops = dev->netdev_ops;
  }
 }

 if (!br_dev && !dev) {
  NL_SET_ERR_MSG(extack, "No device specified");
  return -ENODEV;
 }

 if (!ops || !ops->ndo_fdb_get) {
  NL_SET_ERR_MSG(extack, "Fdb get operation not supported by device");
  return -EOPNOTSUPP;
 }

 skb = nlmsg_new(NLMSG_GOODSIZE, GFP_KERNEL);
 if (!skb)
  return -ENOBUFS;

 if (br_dev)
  dev = br_dev;
 err = ops->ndo_fdb_get(skb, tb, dev, addr, vid,
          NETLINK_CB(in_skb).portid,
          nlh->nlmsg_seq, extack);
 if (err)
  goto out;

 return rtnl_unicast(skb, net, NETLINK_CB(in_skb).portid);
out:
 kfree_skb(skb);
 return err;
}
