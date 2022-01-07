
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct net_bridge_fdb_entry {int dummy; } ;
struct net_bridge {int dev; } ;
struct net {int dummy; } ;


 int EMSGSIZE ;
 int ENOBUFS ;
 int GFP_ATOMIC ;
 int RTNLGRP_NEIGH ;
 int WARN_ON (int) ;
 int br_switchdev_fdb_notify (struct net_bridge_fdb_entry const*,int) ;
 struct net* dev_net (int ) ;
 int fdb_fill_info (struct sk_buff*,struct net_bridge*,struct net_bridge_fdb_entry const*,int ,int ,int,int ) ;
 int fdb_nlmsg_size () ;
 int kfree_skb (struct sk_buff*) ;
 struct sk_buff* nlmsg_new (int ,int ) ;
 int rtnl_notify (struct sk_buff*,struct net*,int ,int ,int *,int ) ;
 int rtnl_set_sk_err (struct net*,int ,int) ;

__attribute__((used)) static void fdb_notify(struct net_bridge *br,
         const struct net_bridge_fdb_entry *fdb, int type,
         bool swdev_notify)
{
 struct net *net = dev_net(br->dev);
 struct sk_buff *skb;
 int err = -ENOBUFS;

 if (swdev_notify)
  br_switchdev_fdb_notify(fdb, type);

 skb = nlmsg_new(fdb_nlmsg_size(), GFP_ATOMIC);
 if (skb == ((void*)0))
  goto errout;

 err = fdb_fill_info(skb, br, fdb, 0, 0, type, 0);
 if (err < 0) {

  WARN_ON(err == -EMSGSIZE);
  kfree_skb(skb);
  goto errout;
 }
 rtnl_notify(skb, net, 0, RTNLGRP_NEIGH, ((void*)0), GFP_ATOMIC);
 return;
errout:
 rtnl_set_sk_err(net, RTNLGRP_NEIGH, err);
}
