
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct nlattr {int dummy; } ;
struct nft_ctx {int family; int net; } ;
struct nft_connlimit {int limit; int invert; int list; } ;


 int EINVAL ;
 int EOPNOTSUPP ;
 size_t NFTA_CONNLIMIT_COUNT ;
 size_t NFTA_CONNLIMIT_FLAGS ;
 int NFT_CONNLIMIT_F_INV ;
 int nf_conncount_list_init (int *) ;
 int nf_ct_netns_get (int ,int ) ;
 int nla_get_be32 (struct nlattr const* const) ;
 int ntohl (int ) ;

__attribute__((used)) static int nft_connlimit_do_init(const struct nft_ctx *ctx,
     const struct nlattr * const tb[],
     struct nft_connlimit *priv)
{
 bool invert = 0;
 u32 flags, limit;

 if (!tb[NFTA_CONNLIMIT_COUNT])
  return -EINVAL;

 limit = ntohl(nla_get_be32(tb[NFTA_CONNLIMIT_COUNT]));

 if (tb[NFTA_CONNLIMIT_FLAGS]) {
  flags = ntohl(nla_get_be32(tb[NFTA_CONNLIMIT_FLAGS]));
  if (flags & ~NFT_CONNLIMIT_F_INV)
   return -EOPNOTSUPP;
  if (flags & NFT_CONNLIMIT_F_INV)
   invert = 1;
 }

 nf_conncount_list_init(&priv->list);
 priv->limit = limit;
 priv->invert = invert;

 return nf_ct_netns_get(ctx->net, ctx->family);
}
