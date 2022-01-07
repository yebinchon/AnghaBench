
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nft_regs {int * data; } ;
struct nft_pktinfo {int dummy; } ;
struct nft_immediate_expr {size_t dreg; int dlen; int data; } ;
struct nft_expr {int dummy; } ;


 int nft_data_copy (int *,int *,int ) ;
 struct nft_immediate_expr* nft_expr_priv (struct nft_expr const*) ;

void nft_immediate_eval(const struct nft_expr *expr,
   struct nft_regs *regs,
   const struct nft_pktinfo *pkt)
{
 const struct nft_immediate_expr *priv = nft_expr_priv(expr);

 nft_data_copy(&regs->data[priv->dreg], &priv->data, priv->dlen);
}
