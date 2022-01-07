
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct sk_buff {int dummy; } ;
struct in6_addr {int dummy; } ;
struct TYPE_6__ {struct in6_addr dst; struct in6_addr src; } ;
struct TYPE_5__ {int dst; int src; } ;
struct TYPE_7__ {TYPE_2__ ipv6; TYPE_1__ ipv4; } ;
struct TYPE_8__ {TYPE_3__ u; } ;
struct ip_tunnel_info {TYPE_4__ key; } ;
typedef int __be32 ;


 unsigned short AF_INET ;
 unsigned short AF_INET6 ;
 int EINVAL ;
 int TCA_TUNNEL_KEY_ENC_IPV4_DST ;
 int TCA_TUNNEL_KEY_ENC_IPV4_SRC ;
 int TCA_TUNNEL_KEY_ENC_IPV6_DST ;
 int TCA_TUNNEL_KEY_ENC_IPV6_SRC ;
 unsigned short ip_tunnel_info_af (struct ip_tunnel_info const*) ;
 int nla_put_in6_addr (struct sk_buff*,int ,struct in6_addr const*) ;
 int nla_put_in_addr (struct sk_buff*,int ,int ) ;

__attribute__((used)) static int tunnel_key_dump_addresses(struct sk_buff *skb,
         const struct ip_tunnel_info *info)
{
 unsigned short family = ip_tunnel_info_af(info);

 if (family == AF_INET) {
  __be32 saddr = info->key.u.ipv4.src;
  __be32 daddr = info->key.u.ipv4.dst;

  if (!nla_put_in_addr(skb, TCA_TUNNEL_KEY_ENC_IPV4_SRC, saddr) &&
      !nla_put_in_addr(skb, TCA_TUNNEL_KEY_ENC_IPV4_DST, daddr))
   return 0;
 }

 if (family == AF_INET6) {
  const struct in6_addr *saddr6 = &info->key.u.ipv6.src;
  const struct in6_addr *daddr6 = &info->key.u.ipv6.dst;

  if (!nla_put_in6_addr(skb,
          TCA_TUNNEL_KEY_ENC_IPV6_SRC, saddr6) &&
      !nla_put_in6_addr(skb,
          TCA_TUNNEL_KEY_ENC_IPV6_DST, daddr6))
   return 0;
 }

 return -EINVAL;
}
