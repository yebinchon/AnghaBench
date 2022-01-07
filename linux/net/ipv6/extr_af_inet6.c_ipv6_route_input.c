
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff {int dummy; } ;
struct TYPE_2__ {int error; } ;


 int ip6_route_input (struct sk_buff*) ;
 TYPE_1__* skb_dst (struct sk_buff*) ;

__attribute__((used)) static int ipv6_route_input(struct sk_buff *skb)
{
 ip6_route_input(skb);
 return skb_dst(skb)->error;
}
