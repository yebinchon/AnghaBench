
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct nft_symhash {scalar_t__ modulus; scalar_t__ offset; int dreg; } ;
struct nft_expr {int dummy; } ;


 int NFTA_HASH_DREG ;
 int NFTA_HASH_MODULUS ;
 int NFTA_HASH_OFFSET ;
 int NFTA_HASH_TYPE ;
 scalar_t__ NFT_HASH_SYM ;
 int htonl (scalar_t__) ;
 scalar_t__ nft_dump_register (struct sk_buff*,int ,int ) ;
 struct nft_symhash* nft_expr_priv (struct nft_expr const*) ;
 scalar_t__ nla_put_be32 (struct sk_buff*,int ,int ) ;

__attribute__((used)) static int nft_symhash_dump(struct sk_buff *skb,
       const struct nft_expr *expr)
{
 const struct nft_symhash *priv = nft_expr_priv(expr);

 if (nft_dump_register(skb, NFTA_HASH_DREG, priv->dreg))
  goto nla_put_failure;
 if (nla_put_be32(skb, NFTA_HASH_MODULUS, htonl(priv->modulus)))
  goto nla_put_failure;
 if (priv->offset != 0)
  if (nla_put_be32(skb, NFTA_HASH_OFFSET, htonl(priv->offset)))
   goto nla_put_failure;
 if (nla_put_be32(skb, NFTA_HASH_TYPE, htonl(NFT_HASH_SYM)))
  goto nla_put_failure;
 return 0;

nla_put_failure:
 return -1;
}
