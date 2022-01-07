
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct nft_quota {int dummy; } ;
struct nft_expr {int dummy; } ;


 struct nft_quota* nft_expr_priv (struct nft_expr const*) ;
 int nft_quota_do_dump (struct sk_buff*,struct nft_quota*,int) ;

__attribute__((used)) static int nft_quota_dump(struct sk_buff *skb, const struct nft_expr *expr)
{
 struct nft_quota *priv = nft_expr_priv(expr);

 return nft_quota_do_dump(skb, priv, 0);
}
