
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff {int dummy; } ;
struct seg6_local_lwt {int dummy; } ;
struct ipv6_sr_hdr {int dummy; } ;
struct TYPE_2__ {int daddr; } ;


 int EINVAL ;
 int advance_nextseg (struct ipv6_sr_hdr*,int *) ;
 int dst_input (struct sk_buff*) ;
 struct ipv6_sr_hdr* get_and_validate_srh (struct sk_buff*) ;
 TYPE_1__* ipv6_hdr (struct sk_buff*) ;
 int kfree_skb (struct sk_buff*) ;
 int seg6_lookup_nexthop (struct sk_buff*,int *,int ) ;

__attribute__((used)) static int input_action_end(struct sk_buff *skb, struct seg6_local_lwt *slwt)
{
 struct ipv6_sr_hdr *srh;

 srh = get_and_validate_srh(skb);
 if (!srh)
  goto drop;

 advance_nextseg(srh, &ipv6_hdr(skb)->daddr);

 seg6_lookup_nexthop(skb, ((void*)0), 0);

 return dst_input(skb);

drop:
 kfree_skb(skb);
 return -EINVAL;
}
