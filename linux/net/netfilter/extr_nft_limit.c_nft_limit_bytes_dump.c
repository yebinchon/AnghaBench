
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct nft_limit {int dummy; } ;
struct nft_expr {int dummy; } ;


 int NFT_LIMIT_PKT_BYTES ;
 struct nft_limit* nft_expr_priv (struct nft_expr const*) ;
 int nft_limit_dump (struct sk_buff*,struct nft_limit const*,int ) ;

__attribute__((used)) static int nft_limit_bytes_dump(struct sk_buff *skb,
    const struct nft_expr *expr)
{
 const struct nft_limit *priv = nft_expr_priv(expr);

 return nft_limit_dump(skb, priv, NFT_LIMIT_PKT_BYTES);
}
