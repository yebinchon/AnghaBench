
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff {int dummy; } ;
struct net {int dummy; } ;
struct mr_table {int maxvif; int net; } ;
struct TYPE_2__ {scalar_t__ mfc_parent; } ;
struct mfc_cache {TYPE_1__ _c; } ;


 int ENOBUFS ;
 int GFP_ATOMIC ;
 scalar_t__ MAXVIFS ;
 int RTNLGRP_IPV4_MROUTE ;
 int ipmr_fill_mroute (struct mr_table*,struct sk_buff*,int ,int ,struct mfc_cache*,int,int ) ;
 int kfree_skb (struct sk_buff*) ;
 int mroute_msgsize (int,int ) ;
 struct sk_buff* nlmsg_new (int ,int ) ;
 struct net* read_pnet (int *) ;
 int rtnl_notify (struct sk_buff*,struct net*,int ,int ,int *,int ) ;
 int rtnl_set_sk_err (struct net*,int ,int) ;

__attribute__((used)) static void mroute_netlink_event(struct mr_table *mrt, struct mfc_cache *mfc,
     int cmd)
{
 struct net *net = read_pnet(&mrt->net);
 struct sk_buff *skb;
 int err = -ENOBUFS;

 skb = nlmsg_new(mroute_msgsize(mfc->_c.mfc_parent >= MAXVIFS,
           mrt->maxvif),
   GFP_ATOMIC);
 if (!skb)
  goto errout;

 err = ipmr_fill_mroute(mrt, skb, 0, 0, mfc, cmd, 0);
 if (err < 0)
  goto errout;

 rtnl_notify(skb, net, 0, RTNLGRP_IPV4_MROUTE, ((void*)0), GFP_ATOMIC);
 return;

errout:
 kfree_skb(skb);
 if (err < 0)
  rtnl_set_sk_err(net, RTNLGRP_IPV4_MROUTE, err);
}
