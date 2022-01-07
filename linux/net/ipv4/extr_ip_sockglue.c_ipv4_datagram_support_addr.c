
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ ee_origin; } ;
struct sock_exterr_skb {scalar_t__ port; TYPE_1__ ee; } ;


 scalar_t__ SO_EE_ORIGIN_ICMP ;
 scalar_t__ SO_EE_ORIGIN_LOCAL ;

__attribute__((used)) static inline bool ipv4_datagram_support_addr(struct sock_exterr_skb *serr)
{
 return serr->ee.ee_origin == SO_EE_ORIGIN_ICMP ||
        serr->ee.ee_origin == SO_EE_ORIGIN_LOCAL || serr->port;
}
