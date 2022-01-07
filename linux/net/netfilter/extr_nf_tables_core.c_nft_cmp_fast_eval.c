
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int code; } ;
struct nft_regs {int* data; TYPE_1__ verdict; } ;
struct nft_expr {int dummy; } ;
struct nft_cmp_fast_expr {size_t sreg; int data; int len; } ;


 int NFT_BREAK ;
 int nft_cmp_fast_mask (int ) ;
 struct nft_cmp_fast_expr* nft_expr_priv (struct nft_expr const*) ;

__attribute__((used)) static void nft_cmp_fast_eval(const struct nft_expr *expr,
         struct nft_regs *regs)
{
 const struct nft_cmp_fast_expr *priv = nft_expr_priv(expr);
 u32 mask = nft_cmp_fast_mask(priv->len);

 if ((regs->data[priv->sreg] & mask) == priv->data)
  return;
 regs->verdict.code = NFT_BREAK;
}
