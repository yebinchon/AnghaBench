
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct nft_tunnel_obj {scalar_t__ md; } ;
struct nft_regs {int dummy; } ;
struct nft_pktinfo {struct sk_buff* skb; } ;
struct nft_object {int dummy; } ;
struct dst_entry {int dummy; } ;


 int dst_hold (struct dst_entry*) ;
 struct nft_tunnel_obj* nft_obj_data (struct nft_object*) ;
 int skb_dst_drop (struct sk_buff*) ;
 int skb_dst_set (struct sk_buff*,struct dst_entry*) ;

__attribute__((used)) static inline void nft_tunnel_obj_eval(struct nft_object *obj,
           struct nft_regs *regs,
           const struct nft_pktinfo *pkt)
{
 struct nft_tunnel_obj *priv = nft_obj_data(obj);
 struct sk_buff *skb = pkt->skb;

 skb_dst_drop(skb);
 dst_hold((struct dst_entry *) priv->md);
 skb_dst_set(skb, (struct dst_entry *) priv->md);
}
