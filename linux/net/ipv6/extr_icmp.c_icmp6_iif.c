
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff {int dummy; } ;
struct TYPE_2__ {int ifindex; } ;


 TYPE_1__* icmp6_dev (struct sk_buff const*) ;

__attribute__((used)) static int icmp6_iif(const struct sk_buff *skb)
{
 return icmp6_dev(skb)->ifindex;
}
