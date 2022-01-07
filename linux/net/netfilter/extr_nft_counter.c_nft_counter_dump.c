
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct nft_expr {int dummy; } ;
struct nft_counter_percpu_priv {int dummy; } ;


 int nft_counter_do_dump (struct sk_buff*,struct nft_counter_percpu_priv*,int) ;
 struct nft_counter_percpu_priv* nft_expr_priv (struct nft_expr const*) ;

__attribute__((used)) static int nft_counter_dump(struct sk_buff *skb, const struct nft_expr *expr)
{
 struct nft_counter_percpu_priv *priv = nft_expr_priv(expr);

 return nft_counter_do_dump(skb, priv, 0);
}
