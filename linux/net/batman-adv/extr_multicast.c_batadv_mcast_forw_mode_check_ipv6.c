
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct ipv6hdr {int daddr; } ;
struct ethhdr {int dummy; } ;
struct batadv_priv {int dummy; } ;


 int EINVAL ;
 int ENOMEM ;
 int ETH_P_IPV6 ;
 scalar_t__ IPV6_ADDR_MC_SCOPE (int *) ;
 scalar_t__ IPV6_ADDR_SCOPE_LINKLOCAL ;
 scalar_t__ batadv_mcast_is_report_ipv6 (struct sk_buff*) ;
 scalar_t__ ipv6_addr_is_ll_all_nodes (int *) ;
 struct ipv6hdr* ipv6_hdr (struct sk_buff*) ;
 int pskb_may_pull (struct sk_buff*,int) ;

__attribute__((used)) static int batadv_mcast_forw_mode_check_ipv6(struct batadv_priv *bat_priv,
          struct sk_buff *skb,
          bool *is_unsnoopable,
          int *is_routable)
{
 struct ipv6hdr *ip6hdr;


 if (!pskb_may_pull(skb, sizeof(struct ethhdr) + sizeof(*ip6hdr)))
  return -ENOMEM;

 if (batadv_mcast_is_report_ipv6(skb))
  return -EINVAL;

 ip6hdr = ipv6_hdr(skb);

 if (IPV6_ADDR_MC_SCOPE(&ip6hdr->daddr) < IPV6_ADDR_SCOPE_LINKLOCAL)
  return -EINVAL;




 if (ipv6_addr_is_ll_all_nodes(&ip6hdr->daddr))
  *is_unsnoopable = 1;
 else if (IPV6_ADDR_MC_SCOPE(&ip6hdr->daddr) > IPV6_ADDR_SCOPE_LINKLOCAL)
  *is_routable = ETH_P_IPV6;

 return 0;
}
