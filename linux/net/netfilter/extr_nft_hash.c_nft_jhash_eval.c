
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct nft_regs {int * data; } ;
struct nft_pktinfo {int dummy; } ;
struct nft_jhash {size_t sreg; size_t dreg; int offset; int modulus; int seed; int len; } ;
struct nft_expr {int dummy; } ;


 int jhash (void const*,int ,int ) ;
 struct nft_jhash* nft_expr_priv (struct nft_expr const*) ;
 int reciprocal_scale (int ,int ) ;

__attribute__((used)) static void nft_jhash_eval(const struct nft_expr *expr,
      struct nft_regs *regs,
      const struct nft_pktinfo *pkt)
{
 struct nft_jhash *priv = nft_expr_priv(expr);
 const void *data = &regs->data[priv->sreg];
 u32 h;

 h = reciprocal_scale(jhash(data, priv->len, priv->seed),
        priv->modulus);

 regs->data[priv->dreg] = h + priv->offset;
}
