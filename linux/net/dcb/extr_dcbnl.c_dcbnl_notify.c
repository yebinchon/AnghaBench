
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct sk_buff {int dummy; } ;
struct nlmsghdr {int dummy; } ;
struct net_device {struct dcbnl_rtnl_ops* dcbnl_ops; } ;
struct net {int dummy; } ;
struct dcbnl_rtnl_ops {int dummy; } ;


 int DCB_CAP_DCBX_VER_IEEE ;
 int ENOBUFS ;
 int EOPNOTSUPP ;
 int GFP_KERNEL ;
 int RTNLGRP_DCB ;
 int dcbnl_cee_fill (struct sk_buff*,struct net_device*) ;
 int dcbnl_ieee_fill (struct sk_buff*,struct net_device*) ;
 struct sk_buff* dcbnl_newmsg (int,int,int ,int ,int ,struct nlmsghdr**) ;
 struct net* dev_net (struct net_device*) ;
 int nlmsg_end (struct sk_buff*,struct nlmsghdr*) ;
 int nlmsg_free (struct sk_buff*) ;
 int rtnl_notify (struct sk_buff*,struct net*,int ,int ,int *,int ) ;
 int rtnl_set_sk_err (struct net*,int ,int) ;

__attribute__((used)) static int dcbnl_notify(struct net_device *dev, int event, int cmd,
   u32 seq, u32 portid, int dcbx_ver)
{
 struct net *net = dev_net(dev);
 struct sk_buff *skb;
 struct nlmsghdr *nlh;
 const struct dcbnl_rtnl_ops *ops = dev->dcbnl_ops;
 int err;

 if (!ops)
  return -EOPNOTSUPP;

 skb = dcbnl_newmsg(event, cmd, portid, seq, 0, &nlh);
 if (!skb)
  return -ENOBUFS;

 if (dcbx_ver == DCB_CAP_DCBX_VER_IEEE)
  err = dcbnl_ieee_fill(skb, dev);
 else
  err = dcbnl_cee_fill(skb, dev);

 if (err < 0) {

  nlmsg_free(skb);
  rtnl_set_sk_err(net, RTNLGRP_DCB, err);
 } else {

  nlmsg_end(skb, nlh);
  rtnl_notify(skb, net, 0, RTNLGRP_DCB, ((void*)0), GFP_KERNEL);
 }

 return err;
}
