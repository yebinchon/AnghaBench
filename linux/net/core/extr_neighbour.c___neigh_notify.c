
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct sk_buff {int dummy; } ;
struct net {int dummy; } ;
struct neighbour {int dev; } ;


 int EMSGSIZE ;
 int ENOBUFS ;
 int GFP_ATOMIC ;
 int RTNLGRP_NEIGH ;
 int WARN_ON (int) ;
 struct net* dev_net (int ) ;
 int kfree_skb (struct sk_buff*) ;
 int neigh_fill_info (struct sk_buff*,struct neighbour*,int ,int ,int,int) ;
 int neigh_nlmsg_size () ;
 struct sk_buff* nlmsg_new (int ,int ) ;
 int rtnl_notify (struct sk_buff*,struct net*,int ,int ,int *,int ) ;
 int rtnl_set_sk_err (struct net*,int ,int) ;

__attribute__((used)) static void __neigh_notify(struct neighbour *n, int type, int flags,
      u32 pid)
{
 struct net *net = dev_net(n->dev);
 struct sk_buff *skb;
 int err = -ENOBUFS;

 skb = nlmsg_new(neigh_nlmsg_size(), GFP_ATOMIC);
 if (skb == ((void*)0))
  goto errout;

 err = neigh_fill_info(skb, n, pid, 0, type, flags);
 if (err < 0) {

  WARN_ON(err == -EMSGSIZE);
  kfree_skb(skb);
  goto errout;
 }
 rtnl_notify(skb, net, 0, RTNLGRP_NEIGH, ((void*)0), GFP_ATOMIC);
 return;
errout:
 if (err < 0)
  rtnl_set_sk_err(net, RTNLGRP_NEIGH, err);
}
