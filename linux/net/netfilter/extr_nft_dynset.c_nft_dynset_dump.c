
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct sk_buff {int dummy; } ;
struct nft_expr {int dummy; } ;
struct nft_dynset {scalar_t__ expr; int timeout; TYPE_1__* set; int op; int sreg_data; int sreg_key; scalar_t__ invert; } ;
struct TYPE_2__ {int flags; int name; } ;


 int NFTA_DYNSET_EXPR ;
 int NFTA_DYNSET_FLAGS ;
 int NFTA_DYNSET_OP ;
 int NFTA_DYNSET_PAD ;
 int NFTA_DYNSET_SET_NAME ;
 int NFTA_DYNSET_SREG_DATA ;
 int NFTA_DYNSET_SREG_KEY ;
 int NFTA_DYNSET_TIMEOUT ;
 int NFT_DYNSET_F_INV ;
 int NFT_SET_MAP ;
 int cpu_to_be64 (int ) ;
 int htonl (int ) ;
 int jiffies_to_msecs (int ) ;
 scalar_t__ nft_dump_register (struct sk_buff*,int ,int ) ;
 scalar_t__ nft_expr_dump (struct sk_buff*,int ,scalar_t__) ;
 struct nft_dynset* nft_expr_priv (struct nft_expr const*) ;
 scalar_t__ nla_put_be32 (struct sk_buff*,int ,int ) ;
 scalar_t__ nla_put_be64 (struct sk_buff*,int ,int ,int ) ;
 scalar_t__ nla_put_string (struct sk_buff*,int ,int ) ;

__attribute__((used)) static int nft_dynset_dump(struct sk_buff *skb, const struct nft_expr *expr)
{
 const struct nft_dynset *priv = nft_expr_priv(expr);
 u32 flags = priv->invert ? NFT_DYNSET_F_INV : 0;

 if (nft_dump_register(skb, NFTA_DYNSET_SREG_KEY, priv->sreg_key))
  goto nla_put_failure;
 if (priv->set->flags & NFT_SET_MAP &&
     nft_dump_register(skb, NFTA_DYNSET_SREG_DATA, priv->sreg_data))
  goto nla_put_failure;
 if (nla_put_be32(skb, NFTA_DYNSET_OP, htonl(priv->op)))
  goto nla_put_failure;
 if (nla_put_string(skb, NFTA_DYNSET_SET_NAME, priv->set->name))
  goto nla_put_failure;
 if (nla_put_be64(skb, NFTA_DYNSET_TIMEOUT,
    cpu_to_be64(jiffies_to_msecs(priv->timeout)),
    NFTA_DYNSET_PAD))
  goto nla_put_failure;
 if (priv->expr && nft_expr_dump(skb, NFTA_DYNSET_EXPR, priv->expr))
  goto nla_put_failure;
 if (nla_put_be32(skb, NFTA_DYNSET_FLAGS, htonl(flags)))
  goto nla_put_failure;
 return 0;

nla_put_failure:
 return -1;
}
