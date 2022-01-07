
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct nft_synproxy {int dummy; } ;
struct nft_expr {int dummy; } ;


 struct nft_synproxy* nft_expr_priv (struct nft_expr const*) ;
 int nft_synproxy_do_dump (struct sk_buff*,struct nft_synproxy*) ;

__attribute__((used)) static int nft_synproxy_dump(struct sk_buff *skb, const struct nft_expr *expr)
{
 struct nft_synproxy *priv = nft_expr_priv(expr);

 return nft_synproxy_do_dump(skb, priv);
}
