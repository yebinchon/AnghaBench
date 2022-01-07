
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct nft_limit_pkts {int limit; } ;
struct nft_expr {int dummy; } ;


 int NFT_LIMIT_PKTS ;
 struct nft_limit_pkts* nft_expr_priv (struct nft_expr const*) ;
 int nft_limit_dump (struct sk_buff*,int *,int ) ;

__attribute__((used)) static int nft_limit_pkts_dump(struct sk_buff *skb, const struct nft_expr *expr)
{
 const struct nft_limit_pkts *priv = nft_expr_priv(expr);

 return nft_limit_dump(skb, &priv->limit, NFT_LIMIT_PKTS);
}
