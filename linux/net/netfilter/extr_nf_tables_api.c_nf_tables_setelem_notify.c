
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;
struct sk_buff {int dummy; } ;
struct nft_set_elem {int dummy; } ;
struct nft_set {int dummy; } ;
struct nft_ctx {int report; int portid; struct net* net; } ;
struct net {int dummy; } ;


 int ENOBUFS ;
 int GFP_KERNEL ;
 int NFNLGRP_NFTABLES ;
 int NLMSG_GOODSIZE ;
 int kfree_skb (struct sk_buff*) ;
 int nf_tables_fill_setelem_info (struct sk_buff*,struct nft_ctx const*,int ,int ,int,int ,struct nft_set const*,struct nft_set_elem const*) ;
 int nfnetlink_has_listeners (struct net*,int ) ;
 int nfnetlink_send (struct sk_buff*,struct net*,int ,int ,int ,int ) ;
 int nfnetlink_set_err (struct net*,int ,int ,int ) ;
 struct sk_buff* nlmsg_new (int ,int ) ;

__attribute__((used)) static void nf_tables_setelem_notify(const struct nft_ctx *ctx,
         const struct nft_set *set,
         const struct nft_set_elem *elem,
         int event, u16 flags)
{
 struct net *net = ctx->net;
 u32 portid = ctx->portid;
 struct sk_buff *skb;
 int err;

 if (!ctx->report && !nfnetlink_has_listeners(net, NFNLGRP_NFTABLES))
  return;

 skb = nlmsg_new(NLMSG_GOODSIZE, GFP_KERNEL);
 if (skb == ((void*)0))
  goto err;

 err = nf_tables_fill_setelem_info(skb, ctx, 0, portid, event, flags,
       set, elem);
 if (err < 0) {
  kfree_skb(skb);
  goto err;
 }

 nfnetlink_send(skb, net, portid, NFNLGRP_NFTABLES, ctx->report,
         GFP_KERNEL);
 return;
err:
 nfnetlink_set_err(net, portid, NFNLGRP_NFTABLES, -ENOBUFS);
}
