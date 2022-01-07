
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff {int dummy; } ;
struct TYPE_2__ {int tp_dst; int tp_src; } ;
struct ip_tunnel_info {TYPE_1__ key; } ;


 int NFTA_TUNNEL_KEY_DPORT ;
 int NFTA_TUNNEL_KEY_SPORT ;
 int htons (int ) ;
 scalar_t__ nla_put_be16 (struct sk_buff*,int ,int ) ;

__attribute__((used)) static int nft_tunnel_ports_dump(struct sk_buff *skb,
     struct ip_tunnel_info *info)
{
 if (nla_put_be16(skb, NFTA_TUNNEL_KEY_SPORT, htons(info->key.tp_src)) < 0 ||
     nla_put_be16(skb, NFTA_TUNNEL_KEY_DPORT, htons(info->key.tp_dst)) < 0)
  return -1;

 return 0;
}
