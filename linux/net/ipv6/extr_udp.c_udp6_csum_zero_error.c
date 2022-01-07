
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sk_buff {int dummy; } ;
struct TYPE_4__ {int daddr; int saddr; } ;
struct TYPE_3__ {int dest; int source; } ;


 TYPE_2__* ipv6_hdr (struct sk_buff*) ;
 int net_dbg_ratelimited (char*,int *,int ,int *,int ) ;
 int ntohs (int ) ;
 TYPE_1__* udp_hdr (struct sk_buff*) ;

__attribute__((used)) static void udp6_csum_zero_error(struct sk_buff *skb)
{



 net_dbg_ratelimited("IPv6: udp checksum is 0 for [%pI6c]:%u->[%pI6c]:%u\n",
       &ipv6_hdr(skb)->saddr, ntohs(udp_hdr(skb)->source),
       &ipv6_hdr(skb)->daddr, ntohs(udp_hdr(skb)->dest));
}
