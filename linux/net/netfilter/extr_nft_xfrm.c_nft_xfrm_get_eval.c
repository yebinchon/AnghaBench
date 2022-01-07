
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nft_xfrm {int dir; } ;
struct TYPE_2__ {int code; } ;
struct nft_regs {TYPE_1__ verdict; } ;
struct nft_pktinfo {int dummy; } ;
struct nft_expr {int dummy; } ;


 int NFT_BREAK ;
 int WARN_ON_ONCE (int) ;


 struct nft_xfrm* nft_expr_priv (struct nft_expr const*) ;
 int nft_xfrm_get_eval_in (struct nft_xfrm const*,struct nft_regs*,struct nft_pktinfo const*) ;
 int nft_xfrm_get_eval_out (struct nft_xfrm const*,struct nft_regs*,struct nft_pktinfo const*) ;

__attribute__((used)) static void nft_xfrm_get_eval(const struct nft_expr *expr,
         struct nft_regs *regs,
         const struct nft_pktinfo *pkt)
{
 const struct nft_xfrm *priv = nft_expr_priv(expr);

 switch (priv->dir) {
 case 129:
  nft_xfrm_get_eval_in(priv, regs, pkt);
  break;
 case 128:
  nft_xfrm_get_eval_out(priv, regs, pkt);
  break;
 default:
  WARN_ON_ONCE(1);
  regs->verdict.code = NFT_BREAK;
  break;
 }
}
