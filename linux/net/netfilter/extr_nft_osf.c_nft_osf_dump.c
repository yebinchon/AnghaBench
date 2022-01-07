
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct nft_osf {int dreg; int flags; int ttl; } ;
struct nft_expr {int dummy; } ;


 int NFTA_OSF_DREG ;
 int NFTA_OSF_FLAGS ;
 int NFTA_OSF_TTL ;
 scalar_t__ nft_dump_register (struct sk_buff*,int ,int ) ;
 struct nft_osf* nft_expr_priv (struct nft_expr const*) ;
 scalar_t__ nla_put_be32 (struct sk_buff*,int ,int ) ;
 scalar_t__ nla_put_u8 (struct sk_buff*,int ,int ) ;
 int ntohl (int ) ;

__attribute__((used)) static int nft_osf_dump(struct sk_buff *skb, const struct nft_expr *expr)
{
 const struct nft_osf *priv = nft_expr_priv(expr);

 if (nla_put_u8(skb, NFTA_OSF_TTL, priv->ttl))
  goto nla_put_failure;

 if (nla_put_be32(skb, NFTA_OSF_FLAGS, ntohl(priv->flags)))
  goto nla_put_failure;

 if (nft_dump_register(skb, NFTA_OSF_DREG, priv->dreg))
  goto nla_put_failure;

 return 0;

nla_put_failure:
 return -1;
}
