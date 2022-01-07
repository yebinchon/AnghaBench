
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct nft_expr {int dummy; } ;
struct nft_byteorder {int size; int len; int op; int dreg; int sreg; } ;


 int NFTA_BYTEORDER_DREG ;
 int NFTA_BYTEORDER_LEN ;
 int NFTA_BYTEORDER_OP ;
 int NFTA_BYTEORDER_SIZE ;
 int NFTA_BYTEORDER_SREG ;
 int htonl (int ) ;
 scalar_t__ nft_dump_register (struct sk_buff*,int ,int ) ;
 struct nft_byteorder* nft_expr_priv (struct nft_expr const*) ;
 scalar_t__ nla_put_be32 (struct sk_buff*,int ,int ) ;

__attribute__((used)) static int nft_byteorder_dump(struct sk_buff *skb, const struct nft_expr *expr)
{
 const struct nft_byteorder *priv = nft_expr_priv(expr);

 if (nft_dump_register(skb, NFTA_BYTEORDER_SREG, priv->sreg))
  goto nla_put_failure;
 if (nft_dump_register(skb, NFTA_BYTEORDER_DREG, priv->dreg))
  goto nla_put_failure;
 if (nla_put_be32(skb, NFTA_BYTEORDER_OP, htonl(priv->op)))
  goto nla_put_failure;
 if (nla_put_be32(skb, NFTA_BYTEORDER_LEN, htonl(priv->len)))
  goto nla_put_failure;
 if (nla_put_be32(skb, NFTA_BYTEORDER_SIZE, htonl(priv->size)))
  goto nla_put_failure;
 return 0;

nla_put_failure:
 return -1;
}
