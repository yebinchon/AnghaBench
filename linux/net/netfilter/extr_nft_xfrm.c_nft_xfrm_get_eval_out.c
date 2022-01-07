
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct xfrm_dst {struct dst_entry* child; } ;
struct nft_xfrm {int spnum; } ;
struct TYPE_2__ {int code; } ;
struct nft_regs {TYPE_1__ verdict; } ;
struct nft_pktinfo {int skb; } ;
struct dst_entry {scalar_t__ xfrm; } ;


 int NFT_BREAK ;
 int nft_xfrm_state_get_key (struct nft_xfrm const*,struct nft_regs*,scalar_t__) ;
 struct dst_entry* skb_dst (int ) ;

__attribute__((used)) static void nft_xfrm_get_eval_out(const struct nft_xfrm *priv,
      struct nft_regs *regs,
      const struct nft_pktinfo *pkt)
{
 const struct dst_entry *dst = skb_dst(pkt->skb);
 int i;

 for (i = 0; dst && dst->xfrm;
      dst = ((const struct xfrm_dst *)dst)->child, i++) {
  if (i < priv->spnum)
   continue;

  nft_xfrm_state_get_key(priv, regs, dst->xfrm);
  return;
 }

 regs->verdict.code = NFT_BREAK;
}
