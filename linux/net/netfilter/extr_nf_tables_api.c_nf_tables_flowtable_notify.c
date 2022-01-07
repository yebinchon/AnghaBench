
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct nft_flowtable {int dummy; } ;
struct nft_ctx {int portid; int net; scalar_t__ report; int family; int seq; } ;


 int ENOBUFS ;
 int GFP_KERNEL ;
 int NFNLGRP_NFTABLES ;
 int NLMSG_GOODSIZE ;
 int kfree_skb (struct sk_buff*) ;
 int nf_tables_fill_flowtable_info (struct sk_buff*,int ,int ,int ,int,int ,int ,struct nft_flowtable*) ;
 int nfnetlink_has_listeners (int ,int ) ;
 int nfnetlink_send (struct sk_buff*,int ,int ,int ,scalar_t__,int ) ;
 int nfnetlink_set_err (int ,int ,int ,int ) ;
 struct sk_buff* nlmsg_new (int ,int ) ;

__attribute__((used)) static void nf_tables_flowtable_notify(struct nft_ctx *ctx,
           struct nft_flowtable *flowtable,
           int event)
{
 struct sk_buff *skb;
 int err;

 if (ctx->report &&
     !nfnetlink_has_listeners(ctx->net, NFNLGRP_NFTABLES))
  return;

 skb = nlmsg_new(NLMSG_GOODSIZE, GFP_KERNEL);
 if (skb == ((void*)0))
  goto err;

 err = nf_tables_fill_flowtable_info(skb, ctx->net, ctx->portid,
         ctx->seq, event, 0,
         ctx->family, flowtable);
 if (err < 0) {
  kfree_skb(skb);
  goto err;
 }

 nfnetlink_send(skb, ctx->net, ctx->portid, NFNLGRP_NFTABLES,
         ctx->report, GFP_KERNEL);
 return;
err:
 nfnetlink_set_err(ctx->net, ctx->portid, NFNLGRP_NFTABLES, -ENOBUFS);
}
