
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct sk_buff {int dummy; } ;
struct nft_symhash {size_t dreg; scalar_t__ offset; int modulus; } ;
struct nft_regs {scalar_t__* data; } ;
struct nft_pktinfo {struct sk_buff* skb; } ;
struct nft_expr {int dummy; } ;


 int __skb_get_hash_symmetric (struct sk_buff*) ;
 struct nft_symhash* nft_expr_priv (struct nft_expr const*) ;
 scalar_t__ reciprocal_scale (int ,int ) ;

__attribute__((used)) static void nft_symhash_eval(const struct nft_expr *expr,
        struct nft_regs *regs,
        const struct nft_pktinfo *pkt)
{
 struct nft_symhash *priv = nft_expr_priv(expr);
 struct sk_buff *skb = pkt->skb;
 u32 h;

 h = reciprocal_scale(__skb_get_hash_symmetric(skb), priv->modulus);

 regs->data[priv->dreg] = h + priv->offset;
}
