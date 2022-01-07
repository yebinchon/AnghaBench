
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct sk_buff {int dummy; } ;
struct nft_lookup {int dreg; TYPE_1__* set; int sreg; scalar_t__ invert; } ;
struct nft_expr {int dummy; } ;
struct TYPE_2__ {int flags; int name; } ;


 int NFTA_LOOKUP_DREG ;
 int NFTA_LOOKUP_FLAGS ;
 int NFTA_LOOKUP_SET ;
 int NFTA_LOOKUP_SREG ;
 int NFT_LOOKUP_F_INV ;
 int NFT_SET_MAP ;
 int htonl (int ) ;
 scalar_t__ nft_dump_register (struct sk_buff*,int ,int ) ;
 struct nft_lookup* nft_expr_priv (struct nft_expr const*) ;
 scalar_t__ nla_put_be32 (struct sk_buff*,int ,int ) ;
 scalar_t__ nla_put_string (struct sk_buff*,int ,int ) ;

__attribute__((used)) static int nft_lookup_dump(struct sk_buff *skb, const struct nft_expr *expr)
{
 const struct nft_lookup *priv = nft_expr_priv(expr);
 u32 flags = priv->invert ? NFT_LOOKUP_F_INV : 0;

 if (nla_put_string(skb, NFTA_LOOKUP_SET, priv->set->name))
  goto nla_put_failure;
 if (nft_dump_register(skb, NFTA_LOOKUP_SREG, priv->sreg))
  goto nla_put_failure;
 if (priv->set->flags & NFT_SET_MAP)
  if (nft_dump_register(skb, NFTA_LOOKUP_DREG, priv->dreg))
   goto nla_put_failure;
 if (nla_put_be32(skb, NFTA_LOOKUP_FLAGS, htonl(flags)))
  goto nla_put_failure;
 return 0;

nla_put_failure:
 return -1;
}
