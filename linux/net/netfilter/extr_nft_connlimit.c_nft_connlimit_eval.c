
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nft_regs {int dummy; } ;
struct nft_pktinfo {int dummy; } ;
struct nft_expr {int dummy; } ;
struct nft_connlimit {int dummy; } ;


 int nft_connlimit_do_eval (struct nft_connlimit*,struct nft_regs*,struct nft_pktinfo const*,int *) ;
 struct nft_connlimit* nft_expr_priv (struct nft_expr const*) ;

__attribute__((used)) static void nft_connlimit_eval(const struct nft_expr *expr,
          struct nft_regs *regs,
          const struct nft_pktinfo *pkt)
{
 struct nft_connlimit *priv = nft_expr_priv(expr);

 nft_connlimit_do_eval(priv, regs, pkt, ((void*)0));
}
