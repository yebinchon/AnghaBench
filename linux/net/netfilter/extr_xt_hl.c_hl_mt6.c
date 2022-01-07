
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xt_action_param {struct ip6t_hl_info* matchinfo; } ;
struct sk_buff {int dummy; } ;
struct ipv6hdr {int hop_limit; } ;
struct ip6t_hl_info {int mode; int hop_limit; } ;






 struct ipv6hdr* ipv6_hdr (struct sk_buff const*) ;

__attribute__((used)) static bool hl_mt6(const struct sk_buff *skb, struct xt_action_param *par)
{
 const struct ip6t_hl_info *info = par->matchinfo;
 const struct ipv6hdr *ip6h = ipv6_hdr(skb);

 switch (info->mode) {
 case 131:
  return ip6h->hop_limit == info->hop_limit;
 case 128:
  return ip6h->hop_limit != info->hop_limit;
 case 129:
  return ip6h->hop_limit < info->hop_limit;
 case 130:
  return ip6h->hop_limit > info->hop_limit;
 }

 return 0;
}
