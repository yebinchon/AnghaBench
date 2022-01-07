
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xt_rpfilter_info {int flags; } ;
struct xt_action_param {struct xt_rpfilter_info* matchinfo; } ;
struct sk_buff {int dummy; } ;
struct ipv6hdr {int saddr; } ;


 int IPV6_ADDR_ANY ;
 int XT_RPFILTER_INVERT ;
 int ipv6_addr_type (int *) ;
 struct ipv6hdr* ipv6_hdr (struct sk_buff const*) ;
 scalar_t__ rpfilter_is_loopback (struct sk_buff const*,int ) ;
 int rpfilter_lookup_reverse6 (int ,struct sk_buff const*,int ,int) ;
 scalar_t__ unlikely (int) ;
 int xt_in (struct xt_action_param*) ;
 int xt_net (struct xt_action_param*) ;

__attribute__((used)) static bool rpfilter_mt(const struct sk_buff *skb, struct xt_action_param *par)
{
 const struct xt_rpfilter_info *info = par->matchinfo;
 int saddrtype;
 struct ipv6hdr *iph;
 bool invert = info->flags & XT_RPFILTER_INVERT;

 if (rpfilter_is_loopback(skb, xt_in(par)))
  return 1 ^ invert;

 iph = ipv6_hdr(skb);
 saddrtype = ipv6_addr_type(&iph->saddr);
 if (unlikely(saddrtype == IPV6_ADDR_ANY))
  return 1 ^ invert;

 return rpfilter_lookup_reverse6(xt_net(par), skb, xt_in(par),
     info->flags) ^ invert;
}
