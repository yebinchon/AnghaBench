
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;
struct nlattr {int dummy; } ;
struct nft_quota {unsigned long flags; int consumed; int quota; } ;


 int EINVAL ;
 int EOPNOTSUPP ;
 int EOVERFLOW ;
 size_t NFTA_QUOTA_BYTES ;
 size_t NFTA_QUOTA_CONSUMED ;
 size_t NFTA_QUOTA_FLAGS ;
 unsigned long NFT_QUOTA_F_DEPLETED ;
 unsigned long NFT_QUOTA_F_INV ;
 scalar_t__ S64_MAX ;
 int atomic64_set (int *,scalar_t__) ;
 scalar_t__ be64_to_cpu (int ) ;
 int nla_get_be32 (struct nlattr const* const) ;
 int nla_get_be64 (struct nlattr const* const) ;
 unsigned long ntohl (int ) ;

__attribute__((used)) static int nft_quota_do_init(const struct nlattr * const tb[],
        struct nft_quota *priv)
{
 unsigned long flags = 0;
 u64 quota, consumed = 0;

 if (!tb[NFTA_QUOTA_BYTES])
  return -EINVAL;

 quota = be64_to_cpu(nla_get_be64(tb[NFTA_QUOTA_BYTES]));
 if (quota > S64_MAX)
  return -EOVERFLOW;

 if (tb[NFTA_QUOTA_CONSUMED]) {
  consumed = be64_to_cpu(nla_get_be64(tb[NFTA_QUOTA_CONSUMED]));
  if (consumed > quota)
   return -EINVAL;
 }

 if (tb[NFTA_QUOTA_FLAGS]) {
  flags = ntohl(nla_get_be32(tb[NFTA_QUOTA_FLAGS]));
  if (flags & ~NFT_QUOTA_F_INV)
   return -EINVAL;
  if (flags & NFT_QUOTA_F_DEPLETED)
   return -EOPNOTSUPP;
 }

 atomic64_set(&priv->quota, quota);
 priv->flags = flags;
 atomic64_set(&priv->consumed, consumed);

 return 0;
}
