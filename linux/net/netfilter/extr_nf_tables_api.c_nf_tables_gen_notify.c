
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff {int dummy; } ;
struct nlmsghdr {int nlmsg_seq; } ;
struct net {int dummy; } ;
struct TYPE_2__ {int portid; } ;


 int ENOBUFS ;
 int GFP_KERNEL ;
 TYPE_1__ NETLINK_CB (struct sk_buff*) ;
 int NFNLGRP_NFTABLES ;
 int NLMSG_GOODSIZE ;
 int kfree_skb (struct sk_buff*) ;
 int nf_tables_fill_gen_info (struct sk_buff*,struct net*,int ,int ) ;
 int nfnetlink_has_listeners (struct net*,int ) ;
 int nfnetlink_send (struct sk_buff*,struct net*,int ,int ,scalar_t__,int ) ;
 int nfnetlink_set_err (struct net*,int ,int ,int ) ;
 struct nlmsghdr* nlmsg_hdr (struct sk_buff*) ;
 struct sk_buff* nlmsg_new (int ,int ) ;
 scalar_t__ nlmsg_report (struct nlmsghdr*) ;

__attribute__((used)) static void nf_tables_gen_notify(struct net *net, struct sk_buff *skb,
     int event)
{
 struct nlmsghdr *nlh = nlmsg_hdr(skb);
 struct sk_buff *skb2;
 int err;

 if (nlmsg_report(nlh) &&
     !nfnetlink_has_listeners(net, NFNLGRP_NFTABLES))
  return;

 skb2 = nlmsg_new(NLMSG_GOODSIZE, GFP_KERNEL);
 if (skb2 == ((void*)0))
  goto err;

 err = nf_tables_fill_gen_info(skb2, net, NETLINK_CB(skb).portid,
          nlh->nlmsg_seq);
 if (err < 0) {
  kfree_skb(skb2);
  goto err;
 }

 nfnetlink_send(skb2, net, NETLINK_CB(skb).portid, NFNLGRP_NFTABLES,
         nlmsg_report(nlh), GFP_KERNEL);
 return;
err:
 nfnetlink_set_err(net, NETLINK_CB(skb).portid, NFNLGRP_NFTABLES,
     -ENOBUFS);
}
