
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {void* code; } ;
struct nft_regs {TYPE_1__ verdict; int * data; } ;
struct nft_range_expr {size_t sreg; int op; int len; int data_to; int data_from; } ;
struct nft_pktinfo {int dummy; } ;
struct nft_expr {int dummy; } ;


 void* NFT_BREAK ;


 int memcmp (int *,int *,int ) ;
 struct nft_range_expr* nft_expr_priv (struct nft_expr const*) ;

void nft_range_eval(const struct nft_expr *expr,
      struct nft_regs *regs, const struct nft_pktinfo *pkt)
{
 const struct nft_range_expr *priv = nft_expr_priv(expr);
 int d1, d2;

 d1 = memcmp(&regs->data[priv->sreg], &priv->data_from, priv->len);
 d2 = memcmp(&regs->data[priv->sreg], &priv->data_to, priv->len);
 switch (priv->op) {
 case 129:
  if (d1 < 0 || d2 > 0)
   regs->verdict.code = NFT_BREAK;
  break;
 case 128:
  if (d1 >= 0 && d2 <= 0)
   regs->verdict.code = NFT_BREAK;
  break;
 }
}
