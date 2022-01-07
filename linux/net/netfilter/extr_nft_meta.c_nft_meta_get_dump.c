
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct nft_meta {int dreg; int key; } ;
struct nft_expr {int dummy; } ;


 int NFTA_META_DREG ;
 int NFTA_META_KEY ;
 int htonl (int ) ;
 scalar_t__ nft_dump_register (struct sk_buff*,int ,int ) ;
 struct nft_meta* nft_expr_priv (struct nft_expr const*) ;
 scalar_t__ nla_put_be32 (struct sk_buff*,int ,int ) ;

int nft_meta_get_dump(struct sk_buff *skb,
        const struct nft_expr *expr)
{
 const struct nft_meta *priv = nft_expr_priv(expr);

 if (nla_put_be32(skb, NFTA_META_KEY, htonl(priv->key)))
  goto nla_put_failure;
 if (nft_dump_register(skb, NFTA_META_DREG, priv->dreg))
  goto nla_put_failure;
 return 0;

nla_put_failure:
 return -1;
}
