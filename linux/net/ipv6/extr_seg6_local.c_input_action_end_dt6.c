
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct seg6_local_lwt {int table; } ;
struct ipv6hdr {int dummy; } ;


 int EINVAL ;
 int IPPROTO_IPV6 ;
 int decap_and_validate (struct sk_buff*,int ) ;
 int dst_input (struct sk_buff*) ;
 int kfree_skb (struct sk_buff*) ;
 int pskb_may_pull (struct sk_buff*,int) ;
 int seg6_lookup_nexthop (struct sk_buff*,int *,int ) ;

__attribute__((used)) static int input_action_end_dt6(struct sk_buff *skb,
    struct seg6_local_lwt *slwt)
{
 if (!decap_and_validate(skb, IPPROTO_IPV6))
  goto drop;

 if (!pskb_may_pull(skb, sizeof(struct ipv6hdr)))
  goto drop;

 seg6_lookup_nexthop(skb, ((void*)0), slwt->table);

 return dst_input(skb);

drop:
 kfree_skb(skb);
 return -EINVAL;
}
