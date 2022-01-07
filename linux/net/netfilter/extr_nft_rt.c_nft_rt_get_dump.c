
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct nft_rt {int dreg; int key; } ;
struct nft_expr {int dummy; } ;


 int NFTA_RT_DREG ;
 int NFTA_RT_KEY ;
 int htonl (int ) ;
 scalar_t__ nft_dump_register (struct sk_buff*,int ,int ) ;
 struct nft_rt* nft_expr_priv (struct nft_expr const*) ;
 scalar_t__ nla_put_be32 (struct sk_buff*,int ,int ) ;

__attribute__((used)) static int nft_rt_get_dump(struct sk_buff *skb,
      const struct nft_expr *expr)
{
 const struct nft_rt *priv = nft_expr_priv(expr);

 if (nla_put_be32(skb, NFTA_RT_KEY, htonl(priv->key)))
  goto nla_put_failure;
 if (nft_dump_register(skb, NFTA_RT_DREG, priv->dreg))
  goto nla_put_failure;
 return 0;

nla_put_failure:
 return -1;
}
