
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ ee_origin; } ;
struct sock_exterr_skb {TYPE_1__ ee; } ;
struct sk_buff {int dummy; } ;
struct TYPE_4__ {int iif; } ;


 TYPE_2__* IP6CB (struct sk_buff*) ;
 scalar_t__ SO_EE_ORIGIN_ICMP ;
 scalar_t__ SO_EE_ORIGIN_ICMP6 ;
 scalar_t__ SO_EE_ORIGIN_LOCAL ;

__attribute__((used)) static bool ip6_datagram_support_cmsg(struct sk_buff *skb,
          struct sock_exterr_skb *serr)
{
 if (serr->ee.ee_origin == SO_EE_ORIGIN_ICMP ||
     serr->ee.ee_origin == SO_EE_ORIGIN_ICMP6)
  return 1;

 if (serr->ee.ee_origin == SO_EE_ORIGIN_LOCAL)
  return 0;

 if (!IP6CB(skb)->iif)
  return 0;

 return 1;
}
