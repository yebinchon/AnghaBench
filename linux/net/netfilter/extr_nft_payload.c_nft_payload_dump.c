
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct nft_payload {int len; int offset; int base; int dreg; } ;
struct nft_expr {int dummy; } ;


 int NFTA_PAYLOAD_BASE ;
 int NFTA_PAYLOAD_DREG ;
 int NFTA_PAYLOAD_LEN ;
 int NFTA_PAYLOAD_OFFSET ;
 int htonl (int ) ;
 scalar_t__ nft_dump_register (struct sk_buff*,int ,int ) ;
 struct nft_payload* nft_expr_priv (struct nft_expr const*) ;
 scalar_t__ nla_put_be32 (struct sk_buff*,int ,int ) ;

__attribute__((used)) static int nft_payload_dump(struct sk_buff *skb, const struct nft_expr *expr)
{
 const struct nft_payload *priv = nft_expr_priv(expr);

 if (nft_dump_register(skb, NFTA_PAYLOAD_DREG, priv->dreg) ||
     nla_put_be32(skb, NFTA_PAYLOAD_BASE, htonl(priv->base)) ||
     nla_put_be32(skb, NFTA_PAYLOAD_OFFSET, htonl(priv->offset)) ||
     nla_put_be32(skb, NFTA_PAYLOAD_LEN, htonl(priv->len)))
  goto nla_put_failure;
 return 0;

nla_put_failure:
 return -1;
}
