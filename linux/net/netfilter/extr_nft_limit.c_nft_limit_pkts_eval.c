
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int code; } ;
struct nft_regs {TYPE_1__ verdict; } ;
struct nft_pktinfo {int dummy; } ;
struct nft_limit_pkts {int cost; int limit; } ;
struct nft_expr {int dummy; } ;


 int NFT_BREAK ;
 struct nft_limit_pkts* nft_expr_priv (struct nft_expr const*) ;
 scalar_t__ nft_limit_eval (int *,int ) ;

__attribute__((used)) static void nft_limit_pkts_eval(const struct nft_expr *expr,
    struct nft_regs *regs,
    const struct nft_pktinfo *pkt)
{
 struct nft_limit_pkts *priv = nft_expr_priv(expr);

 if (nft_limit_eval(&priv->limit, priv->cost))
  regs->verdict.code = NFT_BREAK;
}
