
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct nft_payload_set {int csum_flags; int csum_offset; int csum_type; int len; int offset; int base; int sreg; } ;
struct nft_expr {int dummy; } ;


 int NFTA_PAYLOAD_BASE ;
 int NFTA_PAYLOAD_CSUM_FLAGS ;
 int NFTA_PAYLOAD_CSUM_OFFSET ;
 int NFTA_PAYLOAD_CSUM_TYPE ;
 int NFTA_PAYLOAD_LEN ;
 int NFTA_PAYLOAD_OFFSET ;
 int NFTA_PAYLOAD_SREG ;
 int htonl (int ) ;
 scalar_t__ nft_dump_register (struct sk_buff*,int ,int ) ;
 struct nft_payload_set* nft_expr_priv (struct nft_expr const*) ;
 scalar_t__ nla_put_be32 (struct sk_buff*,int ,int ) ;

__attribute__((used)) static int nft_payload_set_dump(struct sk_buff *skb, const struct nft_expr *expr)
{
 const struct nft_payload_set *priv = nft_expr_priv(expr);

 if (nft_dump_register(skb, NFTA_PAYLOAD_SREG, priv->sreg) ||
     nla_put_be32(skb, NFTA_PAYLOAD_BASE, htonl(priv->base)) ||
     nla_put_be32(skb, NFTA_PAYLOAD_OFFSET, htonl(priv->offset)) ||
     nla_put_be32(skb, NFTA_PAYLOAD_LEN, htonl(priv->len)) ||
     nla_put_be32(skb, NFTA_PAYLOAD_CSUM_TYPE, htonl(priv->csum_type)) ||
     nla_put_be32(skb, NFTA_PAYLOAD_CSUM_OFFSET,
    htonl(priv->csum_offset)) ||
     nla_put_be32(skb, NFTA_PAYLOAD_CSUM_FLAGS, htonl(priv->csum_flags)))
  goto nla_put_failure;
 return 0;

nla_put_failure:
 return -1;
}
