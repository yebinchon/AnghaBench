
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct sk_buff {int dummy; } ;
struct net_device {int dummy; } ;
struct net {int dummy; } ;


 int ENOBUFS ;
 int GFP_ATOMIC ;
 int NTF_SELF ;
 int RTNLGRP_NEIGH ;
 struct net* dev_net (struct net_device*) ;
 int kfree_skb (struct sk_buff*) ;
 struct sk_buff* nlmsg_new (int ,int ) ;
 int nlmsg_populate_fdb_fill (struct sk_buff*,struct net_device*,int *,int ,int ,int ,int,int ,int ,int ) ;
 int rtnl_fdb_nlmsg_size () ;
 int rtnl_notify (struct sk_buff*,struct net*,int ,int ,int *,int ) ;
 int rtnl_set_sk_err (struct net*,int ,int) ;

__attribute__((used)) static void rtnl_fdb_notify(struct net_device *dev, u8 *addr, u16 vid, int type,
       u16 ndm_state)
{
 struct net *net = dev_net(dev);
 struct sk_buff *skb;
 int err = -ENOBUFS;

 skb = nlmsg_new(rtnl_fdb_nlmsg_size(), GFP_ATOMIC);
 if (!skb)
  goto errout;

 err = nlmsg_populate_fdb_fill(skb, dev, addr, vid,
          0, 0, type, NTF_SELF, 0, ndm_state);
 if (err < 0) {
  kfree_skb(skb);
  goto errout;
 }

 rtnl_notify(skb, net, 0, RTNLGRP_NEIGH, ((void*)0), GFP_ATOMIC);
 return;
errout:
 rtnl_set_sk_err(net, RTNLGRP_NEIGH, err);
}
