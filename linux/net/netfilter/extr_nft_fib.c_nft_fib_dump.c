
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct nft_fib {int flags; int result; int dreg; } ;
struct nft_expr {int dummy; } ;


 int NFTA_FIB_DREG ;
 int NFTA_FIB_FLAGS ;
 int NFTA_FIB_RESULT ;
 int htonl (int ) ;
 scalar_t__ nft_dump_register (struct sk_buff*,int ,int ) ;
 struct nft_fib* nft_expr_priv (struct nft_expr const*) ;
 scalar_t__ nla_put_be32 (struct sk_buff*,int ,int ) ;

int nft_fib_dump(struct sk_buff *skb, const struct nft_expr *expr)
{
 const struct nft_fib *priv = nft_expr_priv(expr);

 if (nft_dump_register(skb, NFTA_FIB_DREG, priv->dreg))
  return -1;

 if (nla_put_be32(skb, NFTA_FIB_RESULT, htonl(priv->result)))
  return -1;

 if (nla_put_be32(skb, NFTA_FIB_FLAGS, htonl(priv->flags)))
  return -1;

 return 0;
}
