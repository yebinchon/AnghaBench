
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct nft_ng_inc {int offset; int modulus; int dreg; } ;
struct nft_expr {int dummy; } ;


 int NFT_NG_INCREMENTAL ;
 struct nft_ng_inc* nft_expr_priv (struct nft_expr const*) ;
 int nft_ng_dump (struct sk_buff*,int ,int ,int ,int ) ;

__attribute__((used)) static int nft_ng_inc_dump(struct sk_buff *skb, const struct nft_expr *expr)
{
 const struct nft_ng_inc *priv = nft_expr_priv(expr);

 return nft_ng_dump(skb, priv->dreg, priv->modulus, NFT_NG_INCREMENTAL,
      priv->offset);
}
