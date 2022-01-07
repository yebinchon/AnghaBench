
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct nft_pktinfo {int dummy; } ;
struct nf_hook_state {int pf; } ;




 unsigned int nft_do_chain (struct nft_pktinfo*,void*) ;
 int nft_set_pktinfo (struct nft_pktinfo*,struct sk_buff*,struct nf_hook_state const*) ;
 int nft_set_pktinfo_ipv4 (struct nft_pktinfo*,struct sk_buff*) ;
 int nft_set_pktinfo_ipv6 (struct nft_pktinfo*,struct sk_buff*) ;

__attribute__((used)) static unsigned int nft_nat_do_chain(void *priv, struct sk_buff *skb,
         const struct nf_hook_state *state)
{
 struct nft_pktinfo pkt;

 nft_set_pktinfo(&pkt, skb, state);

 switch (state->pf) {
 default:
  break;
 }

 return nft_do_chain(&pkt, priv);
}
