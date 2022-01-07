
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct nft_expr {int dummy; } ;
struct nft_ct {int key; int dir; int dreg; } ;


 int IP_CT_DIR_MAX ;
 int NFTA_CT_DIRECTION ;
 int NFTA_CT_DREG ;
 int NFTA_CT_KEY ;
 int htonl (int) ;
 scalar_t__ nft_dump_register (struct sk_buff*,int ,int ) ;
 struct nft_ct* nft_expr_priv (struct nft_expr const*) ;
 scalar_t__ nla_put_be32 (struct sk_buff*,int ,int ) ;
 int nla_put_u8 (struct sk_buff*,int ,int ) ;

__attribute__((used)) static int nft_ct_get_dump(struct sk_buff *skb, const struct nft_expr *expr)
{
 const struct nft_ct *priv = nft_expr_priv(expr);

 if (nft_dump_register(skb, NFTA_CT_DREG, priv->dreg))
  goto nla_put_failure;
 if (nla_put_be32(skb, NFTA_CT_KEY, htonl(priv->key)))
  goto nla_put_failure;

 switch (priv->key) {
 case 131:
 case 137:
 case 130:
 case 136:
 case 129:
 case 135:
 case 132:
 case 133:
  if (nla_put_u8(skb, NFTA_CT_DIRECTION, priv->dir))
   goto nla_put_failure;
  break;
 case 138:
 case 134:
 case 139:
 case 128:
  if (priv->dir < IP_CT_DIR_MAX &&
      nla_put_u8(skb, NFTA_CT_DIRECTION, priv->dir))
   goto nla_put_failure;
  break;
 default:
  break;
 }

 return 0;

nla_put_failure:
 return -1;
}
