
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct nft_nat {int type; scalar_t__ family; scalar_t__ flags; scalar_t__ sreg_proto_max; scalar_t__ sreg_proto_min; scalar_t__ sreg_addr_max; scalar_t__ sreg_addr_min; } ;
struct nft_expr {int dummy; } ;


 int NFTA_NAT_FAMILY ;
 int NFTA_NAT_FLAGS ;
 int NFTA_NAT_REG_ADDR_MAX ;
 int NFTA_NAT_REG_ADDR_MIN ;
 int NFTA_NAT_REG_PROTO_MAX ;
 int NFTA_NAT_REG_PROTO_MIN ;
 int NFTA_NAT_TYPE ;
 scalar_t__ NFT_NAT_DNAT ;
 scalar_t__ NFT_NAT_SNAT ;


 int htonl (scalar_t__) ;
 scalar_t__ nft_dump_register (struct sk_buff*,int ,scalar_t__) ;
 struct nft_nat* nft_expr_priv (struct nft_expr const*) ;
 scalar_t__ nla_put_be32 (struct sk_buff*,int ,int ) ;

__attribute__((used)) static int nft_nat_dump(struct sk_buff *skb, const struct nft_expr *expr)
{
 const struct nft_nat *priv = nft_expr_priv(expr);

 switch (priv->type) {
 case 128:
  if (nla_put_be32(skb, NFTA_NAT_TYPE, htonl(NFT_NAT_SNAT)))
   goto nla_put_failure;
  break;
 case 129:
  if (nla_put_be32(skb, NFTA_NAT_TYPE, htonl(NFT_NAT_DNAT)))
   goto nla_put_failure;
  break;
 }

 if (nla_put_be32(skb, NFTA_NAT_FAMILY, htonl(priv->family)))
  goto nla_put_failure;

 if (priv->sreg_addr_min) {
  if (nft_dump_register(skb, NFTA_NAT_REG_ADDR_MIN,
          priv->sreg_addr_min) ||
      nft_dump_register(skb, NFTA_NAT_REG_ADDR_MAX,
          priv->sreg_addr_max))
   goto nla_put_failure;
 }

 if (priv->sreg_proto_min) {
  if (nft_dump_register(skb, NFTA_NAT_REG_PROTO_MIN,
          priv->sreg_proto_min) ||
      nft_dump_register(skb, NFTA_NAT_REG_PROTO_MAX,
          priv->sreg_proto_max))
   goto nla_put_failure;
 }

 if (priv->flags != 0) {
  if (nla_put_be32(skb, NFTA_NAT_FLAGS, htonl(priv->flags)))
   goto nla_put_failure;
 }

 return 0;

nla_put_failure:
 return -1;
}
