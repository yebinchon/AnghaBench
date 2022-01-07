
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nft_xt_match_priv {int info; } ;
struct nft_regs {int dummy; } ;
struct nft_pktinfo {int dummy; } ;
struct nft_expr {int dummy; } ;


 int __nft_match_eval (struct nft_expr const*,struct nft_regs*,struct nft_pktinfo const*,int ) ;
 struct nft_xt_match_priv* nft_expr_priv (struct nft_expr const*) ;

__attribute__((used)) static void nft_match_large_eval(const struct nft_expr *expr,
     struct nft_regs *regs,
     const struct nft_pktinfo *pkt)
{
 struct nft_xt_match_priv *priv = nft_expr_priv(expr);

 __nft_match_eval(expr, regs, pkt, priv->info);
}
