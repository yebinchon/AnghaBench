
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct sk_buff {int dummy; } ;
struct TYPE_2__ {int tun_flags; } ;
struct ip_tunnel_info {TYPE_1__ key; } ;


 int NFTA_TUNNEL_KEY_FLAGS ;
 int NFT_TUNNEL_F_DONT_FRAGMENT ;
 int NFT_TUNNEL_F_SEQ_NUMBER ;
 int NFT_TUNNEL_F_ZERO_CSUM_TX ;
 int TUNNEL_CSUM ;
 int TUNNEL_DONT_FRAGMENT ;
 int TUNNEL_SEQ ;
 int htonl (int ) ;
 scalar_t__ nla_put_be32 (struct sk_buff*,int ,int ) ;

__attribute__((used)) static int nft_tunnel_flags_dump(struct sk_buff *skb,
     struct ip_tunnel_info *info)
{
 u32 flags = 0;

 if (info->key.tun_flags & TUNNEL_DONT_FRAGMENT)
  flags |= NFT_TUNNEL_F_DONT_FRAGMENT;
 if (!(info->key.tun_flags & TUNNEL_CSUM))
  flags |= NFT_TUNNEL_F_ZERO_CSUM_TX;
 if (info->key.tun_flags & TUNNEL_SEQ)
  flags |= NFT_TUNNEL_F_SEQ_NUMBER;

 if (nla_put_be32(skb, NFTA_TUNNEL_KEY_FLAGS, htonl(flags)) < 0)
  return -1;

 return 0;
}
