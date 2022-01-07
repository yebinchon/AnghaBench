
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct sk_buff {int dummy; } ;
struct nft_set {int dummy; } ;
struct nft_ctx {int net; int report; int portid; } ;
typedef int gfp_t ;


 int ENOBUFS ;
 int NFNLGRP_NFTABLES ;
 int NLMSG_GOODSIZE ;
 int kfree_skb (struct sk_buff*) ;
 int nf_tables_fill_set (struct sk_buff*,struct nft_ctx const*,struct nft_set const*,int,int ) ;
 int nfnetlink_has_listeners (int ,int ) ;
 int nfnetlink_send (struct sk_buff*,int ,int ,int ,int ,int ) ;
 int nfnetlink_set_err (int ,int ,int ,int ) ;
 struct sk_buff* nlmsg_new (int ,int ) ;

__attribute__((used)) static void nf_tables_set_notify(const struct nft_ctx *ctx,
     const struct nft_set *set, int event,
            gfp_t gfp_flags)
{
 struct sk_buff *skb;
 u32 portid = ctx->portid;
 int err;

 if (!ctx->report &&
     !nfnetlink_has_listeners(ctx->net, NFNLGRP_NFTABLES))
  return;

 skb = nlmsg_new(NLMSG_GOODSIZE, gfp_flags);
 if (skb == ((void*)0))
  goto err;

 err = nf_tables_fill_set(skb, ctx, set, event, 0);
 if (err < 0) {
  kfree_skb(skb);
  goto err;
 }

 nfnetlink_send(skb, ctx->net, portid, NFNLGRP_NFTABLES, ctx->report,
         gfp_flags);
 return;
err:
 nfnetlink_set_err(ctx->net, portid, NFNLGRP_NFTABLES, -ENOBUFS);
}
