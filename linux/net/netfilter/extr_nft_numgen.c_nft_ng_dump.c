
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct sk_buff {int dummy; } ;
typedef enum nft_registers { ____Placeholder_nft_registers } nft_registers ;
typedef enum nft_ng_types { ____Placeholder_nft_ng_types } nft_ng_types ;


 int NFTA_NG_DREG ;
 int NFTA_NG_MODULUS ;
 int NFTA_NG_OFFSET ;
 int NFTA_NG_TYPE ;
 int htonl (int) ;
 scalar_t__ nft_dump_register (struct sk_buff*,int ,int) ;
 scalar_t__ nla_put_be32 (struct sk_buff*,int ,int ) ;

__attribute__((used)) static int nft_ng_dump(struct sk_buff *skb, enum nft_registers dreg,
         u32 modulus, enum nft_ng_types type, u32 offset)
{
 if (nft_dump_register(skb, NFTA_NG_DREG, dreg))
  goto nla_put_failure;
 if (nla_put_be32(skb, NFTA_NG_MODULUS, htonl(modulus)))
  goto nla_put_failure;
 if (nla_put_be32(skb, NFTA_NG_TYPE, htonl(type)))
  goto nla_put_failure;
 if (nla_put_be32(skb, NFTA_NG_OFFSET, htonl(offset)))
  goto nla_put_failure;

 return 0;

nla_put_failure:
 return -1;
}
