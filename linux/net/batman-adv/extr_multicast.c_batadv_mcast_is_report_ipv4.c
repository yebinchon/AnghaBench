
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff {int dummy; } ;
struct TYPE_2__ {int type; } ;





 TYPE_1__* igmp_hdr (struct sk_buff*) ;
 scalar_t__ ip_mc_check_igmp (struct sk_buff*) ;

__attribute__((used)) static bool batadv_mcast_is_report_ipv4(struct sk_buff *skb)
{
 if (ip_mc_check_igmp(skb) < 0)
  return 0;

 switch (igmp_hdr(skb)->type) {
 case 128:
 case 130:
 case 129:
  return 1;
 }

 return 0;
}
