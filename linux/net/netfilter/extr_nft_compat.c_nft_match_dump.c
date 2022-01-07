
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct nft_expr {int dummy; } ;


 int __nft_match_dump (struct sk_buff*,struct nft_expr const*,int ) ;
 int nft_expr_priv (struct nft_expr const*) ;

__attribute__((used)) static int nft_match_dump(struct sk_buff *skb, const struct nft_expr *expr)
{
 return __nft_match_dump(skb, expr, nft_expr_priv(expr));
}
