
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff {int dummy; } ;
struct TYPE_2__ {int icmp6_type; } ;




 TYPE_1__* icmp6_hdr (struct sk_buff*) ;
 scalar_t__ ipv6_mc_check_mld (struct sk_buff*) ;

__attribute__((used)) static bool batadv_mcast_is_report_ipv6(struct sk_buff *skb)
{
 if (ipv6_mc_check_mld(skb) < 0)
  return 0;

 switch (icmp6_hdr(skb)->icmp6_type) {
 case 129:
 case 128:
  return 1;
 }

 return 0;
}
