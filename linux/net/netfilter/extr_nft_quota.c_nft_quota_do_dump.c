
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;
typedef int u32 ;
struct sk_buff {int dummy; } ;
struct nft_quota {int flags; int consumed; int quota; } ;


 int NFTA_QUOTA_BYTES ;
 int NFTA_QUOTA_CONSUMED ;
 int NFTA_QUOTA_FLAGS ;
 int NFTA_QUOTA_PAD ;
 int NFT_QUOTA_DEPLETED_BIT ;
 int NFT_QUOTA_F_DEPLETED ;
 scalar_t__ atomic64_read (int *) ;
 int atomic64_sub (scalar_t__,int *) ;
 int clear_bit (int ,int *) ;
 int cpu_to_be64 (scalar_t__) ;
 int htonl (int ) ;
 scalar_t__ nla_put_be32 (struct sk_buff*,int ,int ) ;
 scalar_t__ nla_put_be64 (struct sk_buff*,int ,int ,int ) ;

__attribute__((used)) static int nft_quota_do_dump(struct sk_buff *skb, struct nft_quota *priv,
        bool reset)
{
 u64 consumed, consumed_cap, quota;
 u32 flags = priv->flags;





 consumed = atomic64_read(&priv->consumed);
 quota = atomic64_read(&priv->quota);
 if (consumed >= quota) {
  consumed_cap = quota;
  flags |= NFT_QUOTA_F_DEPLETED;
 } else {
  consumed_cap = consumed;
 }

 if (nla_put_be64(skb, NFTA_QUOTA_BYTES, cpu_to_be64(quota),
    NFTA_QUOTA_PAD) ||
     nla_put_be64(skb, NFTA_QUOTA_CONSUMED, cpu_to_be64(consumed_cap),
    NFTA_QUOTA_PAD) ||
     nla_put_be32(skb, NFTA_QUOTA_FLAGS, htonl(flags)))
  goto nla_put_failure;

 if (reset) {
  atomic64_sub(consumed, &priv->consumed);
  clear_bit(NFT_QUOTA_DEPLETED_BIT, &priv->flags);
 }
 return 0;

nla_put_failure:
 return -1;
}
