
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct nf_acct {int dummy; } ;
struct net {int nfnl; } ;


 int GFP_ATOMIC ;
 int NFNLGRP_ACCT_QUOTA ;
 int NFNL_MSG_ACCT_OVERQUOTA ;
 int NLMSG_DEFAULT_SIZE ;
 int kfree_skb (struct sk_buff*) ;
 int netlink_broadcast (int ,struct sk_buff*,int ,int ,int ) ;
 int nfnl_acct_fill_info (struct sk_buff*,int ,int ,int ,int ,struct nf_acct*) ;
 struct sk_buff* nlmsg_new (int ,int ) ;

__attribute__((used)) static void nfnl_overquota_report(struct net *net, struct nf_acct *nfacct)
{
 int ret;
 struct sk_buff *skb;

 skb = nlmsg_new(NLMSG_DEFAULT_SIZE, GFP_ATOMIC);
 if (skb == ((void*)0))
  return;

 ret = nfnl_acct_fill_info(skb, 0, 0, NFNL_MSG_ACCT_OVERQUOTA, 0,
      nfacct);
 if (ret <= 0) {
  kfree_skb(skb);
  return;
 }
 netlink_broadcast(net->nfnl, skb, 0, NFNLGRP_ACCT_QUOTA,
     GFP_ATOMIC);
}
