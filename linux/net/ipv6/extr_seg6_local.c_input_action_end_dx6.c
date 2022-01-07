
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct in6_addr {int dummy; } ;
struct seg6_local_lwt {struct in6_addr nh6; } ;
struct ipv6hdr {int dummy; } ;


 int EINVAL ;
 int IPPROTO_IPV6 ;
 int decap_and_validate (struct sk_buff*,int ) ;
 int dst_input (struct sk_buff*) ;
 int ipv6_addr_any (struct in6_addr*) ;
 int kfree_skb (struct sk_buff*) ;
 int pskb_may_pull (struct sk_buff*,int) ;
 int seg6_lookup_nexthop (struct sk_buff*,struct in6_addr*,int ) ;

__attribute__((used)) static int input_action_end_dx6(struct sk_buff *skb,
    struct seg6_local_lwt *slwt)
{
 struct in6_addr *nhaddr = ((void*)0);





 if (!decap_and_validate(skb, IPPROTO_IPV6))
  goto drop;

 if (!pskb_may_pull(skb, sizeof(struct ipv6hdr)))
  goto drop;
 if (!ipv6_addr_any(&slwt->nh6))
  nhaddr = &slwt->nh6;

 seg6_lookup_nexthop(skb, nhaddr, 0);

 return dst_input(skb);
drop:
 kfree_skb(skb);
 return -EINVAL;
}
