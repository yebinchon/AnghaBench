
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct nft_immediate_expr {int dlen; int dreg; int data; } ;
struct nft_expr {int dummy; } ;


 int NFTA_IMMEDIATE_DATA ;
 int NFTA_IMMEDIATE_DREG ;
 int nft_data_dump (struct sk_buff*,int ,int *,int ,int ) ;
 int nft_dreg_to_type (int ) ;
 scalar_t__ nft_dump_register (struct sk_buff*,int ,int ) ;
 struct nft_immediate_expr* nft_expr_priv (struct nft_expr const*) ;

__attribute__((used)) static int nft_immediate_dump(struct sk_buff *skb, const struct nft_expr *expr)
{
 const struct nft_immediate_expr *priv = nft_expr_priv(expr);

 if (nft_dump_register(skb, NFTA_IMMEDIATE_DREG, priv->dreg))
  goto nla_put_failure;

 return nft_data_dump(skb, NFTA_IMMEDIATE_DATA, &priv->data,
        nft_dreg_to_type(priv->dreg), priv->dlen);

nla_put_failure:
 return -1;
}
