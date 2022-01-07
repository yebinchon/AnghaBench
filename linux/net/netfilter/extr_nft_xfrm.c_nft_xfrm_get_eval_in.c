
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct xfrm_state {int dummy; } ;
struct sec_path {size_t len; struct xfrm_state** xvec; } ;
struct nft_xfrm {size_t spnum; } ;
struct TYPE_2__ {int code; } ;
struct nft_regs {TYPE_1__ verdict; } ;
struct nft_pktinfo {int skb; } ;


 int NFT_BREAK ;
 int nft_xfrm_state_get_key (struct nft_xfrm const*,struct nft_regs*,struct xfrm_state const*) ;
 struct sec_path* skb_sec_path (int ) ;

__attribute__((used)) static void nft_xfrm_get_eval_in(const struct nft_xfrm *priv,
        struct nft_regs *regs,
        const struct nft_pktinfo *pkt)
{
 const struct sec_path *sp = skb_sec_path(pkt->skb);
 const struct xfrm_state *state;

 if (sp == ((void*)0) || sp->len <= priv->spnum) {
  regs->verdict.code = NFT_BREAK;
  return;
 }

 state = sp->xvec[priv->spnum];
 nft_xfrm_state_get_key(priv, regs, state);
}
