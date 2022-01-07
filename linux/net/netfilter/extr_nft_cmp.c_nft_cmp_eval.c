
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int code; } ;
struct nft_regs {TYPE_1__ verdict; int * data; } ;
struct nft_pktinfo {int dummy; } ;
struct nft_expr {int dummy; } ;
struct nft_cmp_expr {size_t sreg; int op; int len; int data; } ;


 int NFT_BREAK ;






 int memcmp (int *,int *,int ) ;
 struct nft_cmp_expr* nft_expr_priv (struct nft_expr const*) ;

void nft_cmp_eval(const struct nft_expr *expr,
    struct nft_regs *regs,
    const struct nft_pktinfo *pkt)
{
 const struct nft_cmp_expr *priv = nft_expr_priv(expr);
 int d;

 d = memcmp(&regs->data[priv->sreg], &priv->data, priv->len);
 switch (priv->op) {
 case 133:
  if (d != 0)
   goto mismatch;
  break;
 case 128:
  if (d == 0)
   goto mismatch;
  break;
 case 130:
  if (d == 0)
   goto mismatch;

 case 129:
  if (d > 0)
   goto mismatch;
  break;
 case 132:
  if (d == 0)
   goto mismatch;

 case 131:
  if (d < 0)
   goto mismatch;
  break;
 }
 return;

mismatch:
 regs->verdict.code = NFT_BREAK;
}
