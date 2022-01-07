
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct sk_buff {void* protocol; } ;
struct TYPE_2__ {int ip_ttl_propagate; } ;
struct net {TYPE_1__ mpls; } ;
struct mpls_route {int rt_payload_type; int rt_ttl_propagate; } ;
struct mpls_entry_decoded {int ttl; } ;
struct ipv6hdr {int hop_limit; } ;
struct iphdr {int version; int ttl; int check; } ;
typedef enum mpls_payload_type { ____Placeholder_mpls_payload_type } mpls_payload_type ;


 int ETH_P_IP ;
 int ETH_P_IPV6 ;
 int MPLS_TTL_PROP_DEFAULT ;
 int MPLS_TTL_PROP_ENABLED ;



 int csum_replace2 (int *,void*,void*) ;
 void* htons (int) ;
 struct iphdr* ip_hdr (struct sk_buff*) ;
 struct ipv6hdr* ipv6_hdr (struct sk_buff*) ;
 int pskb_may_pull (struct sk_buff*,int) ;

__attribute__((used)) static bool mpls_egress(struct net *net, struct mpls_route *rt,
   struct sk_buff *skb, struct mpls_entry_decoded dec)
{
 enum mpls_payload_type payload_type;
 bool success = 0;
 if (!pskb_may_pull(skb, 12))
  return 0;

 payload_type = rt->rt_payload_type;
 if (payload_type == 128)
  payload_type = ip_hdr(skb)->version;

 switch (payload_type) {
 case 130: {
  struct iphdr *hdr4 = ip_hdr(skb);
  u8 new_ttl;
  skb->protocol = htons(ETH_P_IP);





  if (rt->rt_ttl_propagate == MPLS_TTL_PROP_ENABLED ||
      (rt->rt_ttl_propagate == MPLS_TTL_PROP_DEFAULT &&
       net->mpls.ip_ttl_propagate))
   new_ttl = dec.ttl;
  else
   new_ttl = hdr4->ttl ? hdr4->ttl - 1 : 0;

  csum_replace2(&hdr4->check,
         htons(hdr4->ttl << 8),
         htons(new_ttl << 8));
  hdr4->ttl = new_ttl;
  success = 1;
  break;
 }
 case 129: {
  struct ipv6hdr *hdr6 = ipv6_hdr(skb);
  skb->protocol = htons(ETH_P_IPV6);





  if (rt->rt_ttl_propagate == MPLS_TTL_PROP_ENABLED ||
      (rt->rt_ttl_propagate == MPLS_TTL_PROP_DEFAULT &&
       net->mpls.ip_ttl_propagate))
   hdr6->hop_limit = dec.ttl;
  else if (hdr6->hop_limit)
   hdr6->hop_limit = hdr6->hop_limit - 1;
  success = 1;
  break;
 }
 case 128:

  break;
 }

 return success;
}
