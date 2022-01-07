
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct nft_reject {int type; int icmp_code; } ;
struct nft_expr {int dummy; } ;


 int NFTA_REJECT_ICMP_CODE ;
 int NFTA_REJECT_TYPE ;

 int htonl (int) ;
 struct nft_reject* nft_expr_priv (struct nft_expr const*) ;
 scalar_t__ nla_put_be32 (struct sk_buff*,int ,int ) ;
 int nla_put_u8 (struct sk_buff*,int ,int ) ;

int nft_reject_dump(struct sk_buff *skb, const struct nft_expr *expr)
{
 const struct nft_reject *priv = nft_expr_priv(expr);

 if (nla_put_be32(skb, NFTA_REJECT_TYPE, htonl(priv->type)))
  goto nla_put_failure;

 switch (priv->type) {
 case 128:
  if (nla_put_u8(skb, NFTA_REJECT_ICMP_CODE, priv->icmp_code))
   goto nla_put_failure;
  break;
 default:
  break;
 }

 return 0;

nla_put_failure:
 return -1;
}
