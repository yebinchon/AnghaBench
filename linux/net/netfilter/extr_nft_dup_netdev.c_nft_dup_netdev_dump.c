
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct nft_expr {int dummy; } ;
struct nft_dup_netdev {int sreg_dev; } ;


 int NFTA_DUP_SREG_DEV ;
 scalar_t__ nft_dump_register (struct sk_buff*,int ,int ) ;
 struct nft_dup_netdev* nft_expr_priv (struct nft_expr const*) ;

__attribute__((used)) static int nft_dup_netdev_dump(struct sk_buff *skb, const struct nft_expr *expr)
{
 struct nft_dup_netdev *priv = nft_expr_priv(expr);

 if (nft_dump_register(skb, NFTA_DUP_SREG_DEV, priv->sreg_dev))
  goto nla_put_failure;

 return 0;

nla_put_failure:
 return -1;
}
