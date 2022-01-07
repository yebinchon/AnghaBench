
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct nft_range_expr {int len; int data_to; int data_from; int op; int sreg; } ;
struct nft_expr {int dummy; } ;


 int NFTA_RANGE_FROM_DATA ;
 int NFTA_RANGE_OP ;
 int NFTA_RANGE_SREG ;
 int NFTA_RANGE_TO_DATA ;
 int NFT_DATA_VALUE ;
 int htonl (int ) ;
 scalar_t__ nft_data_dump (struct sk_buff*,int ,int *,int ,int ) ;
 scalar_t__ nft_dump_register (struct sk_buff*,int ,int ) ;
 struct nft_range_expr* nft_expr_priv (struct nft_expr const*) ;
 scalar_t__ nla_put_be32 (struct sk_buff*,int ,int ) ;

__attribute__((used)) static int nft_range_dump(struct sk_buff *skb, const struct nft_expr *expr)
{
 const struct nft_range_expr *priv = nft_expr_priv(expr);

 if (nft_dump_register(skb, NFTA_RANGE_SREG, priv->sreg))
  goto nla_put_failure;
 if (nla_put_be32(skb, NFTA_RANGE_OP, htonl(priv->op)))
  goto nla_put_failure;

 if (nft_data_dump(skb, NFTA_RANGE_FROM_DATA, &priv->data_from,
     NFT_DATA_VALUE, priv->len) < 0 ||
     nft_data_dump(skb, NFTA_RANGE_TO_DATA, &priv->data_to,
     NFT_DATA_VALUE, priv->len) < 0)
  goto nla_put_failure;
 return 0;

nla_put_failure:
 return -1;
}
