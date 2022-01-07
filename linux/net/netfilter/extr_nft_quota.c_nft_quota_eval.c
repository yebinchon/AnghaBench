
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nft_regs {int dummy; } ;
struct nft_quota {int dummy; } ;
struct nft_pktinfo {int dummy; } ;
struct nft_expr {int dummy; } ;


 struct nft_quota* nft_expr_priv (struct nft_expr const*) ;
 int nft_quota_do_eval (struct nft_quota*,struct nft_regs*,struct nft_pktinfo const*) ;

__attribute__((used)) static void nft_quota_eval(const struct nft_expr *expr,
      struct nft_regs *regs,
      const struct nft_pktinfo *pkt)
{
 struct nft_quota *priv = nft_expr_priv(expr);

 nft_quota_do_eval(priv, regs, pkt);
}
