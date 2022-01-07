
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct sk_buff {int dummy; } ;
struct nlattr {int dummy; } ;
struct TYPE_6__ {int dst; int src; } ;
struct TYPE_5__ {int dst; int src; } ;
struct TYPE_7__ {TYPE_2__ ipv4; TYPE_1__ ipv6; } ;
struct TYPE_8__ {TYPE_3__ u; int label; } ;
struct ip_tunnel_info {int mode; TYPE_4__ key; } ;


 int IP_TUNNEL_INFO_IPV6 ;
 int NFTA_TUNNEL_KEY_IP ;
 int NFTA_TUNNEL_KEY_IP6 ;
 int NFTA_TUNNEL_KEY_IP6_DST ;
 int NFTA_TUNNEL_KEY_IP6_FLOWLABEL ;
 int NFTA_TUNNEL_KEY_IP6_SRC ;
 int NFTA_TUNNEL_KEY_IP_DST ;
 int NFTA_TUNNEL_KEY_IP_SRC ;
 int nla_nest_end (struct sk_buff*,struct nlattr*) ;
 struct nlattr* nla_nest_start_noflag (struct sk_buff*,int ) ;
 scalar_t__ nla_put_be32 (struct sk_buff*,int ,int ) ;
 scalar_t__ nla_put_in6_addr (struct sk_buff*,int ,int *) ;
 scalar_t__ nla_put_in_addr (struct sk_buff*,int ,int ) ;

__attribute__((used)) static int nft_tunnel_ip_dump(struct sk_buff *skb, struct ip_tunnel_info *info)
{
 struct nlattr *nest;

 if (info->mode & IP_TUNNEL_INFO_IPV6) {
  nest = nla_nest_start_noflag(skb, NFTA_TUNNEL_KEY_IP6);
  if (!nest)
   return -1;

  if (nla_put_in6_addr(skb, NFTA_TUNNEL_KEY_IP6_SRC, &info->key.u.ipv6.src) < 0 ||
      nla_put_in6_addr(skb, NFTA_TUNNEL_KEY_IP6_DST, &info->key.u.ipv6.dst) < 0 ||
      nla_put_be32(skb, NFTA_TUNNEL_KEY_IP6_FLOWLABEL, info->key.label))
   return -1;

  nla_nest_end(skb, nest);
 } else {
  nest = nla_nest_start_noflag(skb, NFTA_TUNNEL_KEY_IP);
  if (!nest)
   return -1;

  if (nla_put_in_addr(skb, NFTA_TUNNEL_KEY_IP_SRC, info->key.u.ipv4.src) < 0 ||
      nla_put_in_addr(skb, NFTA_TUNNEL_KEY_IP_DST, info->key.u.ipv4.dst) < 0)
   return -1;

  nla_nest_end(skb, nest);
 }

 return 0;
}
