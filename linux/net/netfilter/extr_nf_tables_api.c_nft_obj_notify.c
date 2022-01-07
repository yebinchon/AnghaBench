
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct sk_buff {int dummy; } ;
struct nft_table {int dummy; } ;
struct nft_object {int dummy; } ;
struct net {int dummy; } ;
typedef int gfp_t ;


 int ENOBUFS ;
 int NFNLGRP_NFTABLES ;
 int NLMSG_GOODSIZE ;
 int kfree_skb (struct sk_buff*) ;
 int nf_tables_fill_obj_info (struct sk_buff*,struct net*,int ,int ,int,int ,int,struct nft_table const*,struct nft_object*,int) ;
 int nfnetlink_has_listeners (struct net*,int ) ;
 int nfnetlink_send (struct sk_buff*,struct net*,int ,int ,int,int ) ;
 int nfnetlink_set_err (struct net*,int ,int ,int ) ;
 struct sk_buff* nlmsg_new (int ,int ) ;

void nft_obj_notify(struct net *net, const struct nft_table *table,
      struct nft_object *obj, u32 portid, u32 seq, int event,
      int family, int report, gfp_t gfp)
{
 struct sk_buff *skb;
 int err;

 if (!report &&
     !nfnetlink_has_listeners(net, NFNLGRP_NFTABLES))
  return;

 skb = nlmsg_new(NLMSG_GOODSIZE, gfp);
 if (skb == ((void*)0))
  goto err;

 err = nf_tables_fill_obj_info(skb, net, portid, seq, event, 0, family,
          table, obj, 0);
 if (err < 0) {
  kfree_skb(skb);
  goto err;
 }

 nfnetlink_send(skb, net, portid, NFNLGRP_NFTABLES, report, gfp);
 return;
err:
 nfnetlink_set_err(net, portid, NFNLGRP_NFTABLES, -ENOBUFS);
}
