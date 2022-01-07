
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff {int dummy; } ;
struct TYPE_2__ {int options; int wscale; int mss; } ;
struct nft_synproxy {TYPE_1__ info; } ;


 int NFTA_SYNPROXY_FLAGS ;
 int NFTA_SYNPROXY_MSS ;
 int NFTA_SYNPROXY_WSCALE ;
 int htonl (int ) ;
 int htons (int ) ;
 scalar_t__ nla_put_be16 (struct sk_buff*,int ,int ) ;
 scalar_t__ nla_put_be32 (struct sk_buff*,int ,int ) ;
 scalar_t__ nla_put_u8 (struct sk_buff*,int ,int ) ;

__attribute__((used)) static int nft_synproxy_do_dump(struct sk_buff *skb, struct nft_synproxy *priv)
{
 if (nla_put_be16(skb, NFTA_SYNPROXY_MSS, htons(priv->info.mss)) ||
     nla_put_u8(skb, NFTA_SYNPROXY_WSCALE, priv->info.wscale) ||
     nla_put_be32(skb, NFTA_SYNPROXY_FLAGS, htonl(priv->info.options)))
  goto nla_put_failure;

 return 0;

nla_put_failure:
 return -1;
}
