
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u32 ;
struct sk_buff {int dummy; } ;
struct nft_limit {int burst; int rate; int nsecs; scalar_t__ invert; } ;
typedef enum nft_limit_type { ____Placeholder_nft_limit_type } nft_limit_type ;


 int NFTA_LIMIT_BURST ;
 int NFTA_LIMIT_FLAGS ;
 int NFTA_LIMIT_PAD ;
 int NFTA_LIMIT_RATE ;
 int NFTA_LIMIT_TYPE ;
 int NFTA_LIMIT_UNIT ;
 int NFT_LIMIT_F_INV ;
 int NSEC_PER_SEC ;
 int cpu_to_be64 (int ) ;
 int div_u64 (int ,int ) ;
 int htonl (int) ;
 scalar_t__ nla_put_be32 (struct sk_buff*,int ,int ) ;
 scalar_t__ nla_put_be64 (struct sk_buff*,int ,int ,int ) ;

__attribute__((used)) static int nft_limit_dump(struct sk_buff *skb, const struct nft_limit *limit,
     enum nft_limit_type type)
{
 u32 flags = limit->invert ? NFT_LIMIT_F_INV : 0;
 u64 secs = div_u64(limit->nsecs, NSEC_PER_SEC);

 if (nla_put_be64(skb, NFTA_LIMIT_RATE, cpu_to_be64(limit->rate),
    NFTA_LIMIT_PAD) ||
     nla_put_be64(skb, NFTA_LIMIT_UNIT, cpu_to_be64(secs),
    NFTA_LIMIT_PAD) ||
     nla_put_be32(skb, NFTA_LIMIT_BURST, htonl(limit->burst)) ||
     nla_put_be32(skb, NFTA_LIMIT_TYPE, htonl(type)) ||
     nla_put_be32(skb, NFTA_LIMIT_FLAGS, htonl(flags)))
  goto nla_put_failure;
 return 0;

nla_put_failure:
 return -1;
}
