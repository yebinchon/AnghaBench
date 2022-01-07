
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff {int dummy; } ;
struct TYPE_2__ {int type; } ;


 int ENOMSG ;





 TYPE_1__* igmp_hdr (struct sk_buff*) ;
 int ip_mc_check_igmp_query (struct sk_buff*) ;
 int ip_mc_check_igmp_reportv3 (struct sk_buff*) ;

__attribute__((used)) static int ip_mc_check_igmp_msg(struct sk_buff *skb)
{
 switch (igmp_hdr(skb)->type) {
 case 130:
 case 128:
 case 132:
  return 0;
 case 131:
  return ip_mc_check_igmp_reportv3(skb);
 case 129:
  return ip_mc_check_igmp_query(skb);
 default:
  return -ENOMSG;
 }
}
