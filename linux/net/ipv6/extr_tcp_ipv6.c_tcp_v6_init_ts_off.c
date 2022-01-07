
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct sk_buff {int dummy; } ;
struct net {int dummy; } ;
struct TYPE_5__ {int s6_addr32; } ;
struct TYPE_4__ {int s6_addr32; } ;
struct TYPE_6__ {TYPE_2__ saddr; TYPE_1__ daddr; } ;


 TYPE_3__* ipv6_hdr (struct sk_buff const*) ;
 int secure_tcpv6_ts_off (struct net const*,int ,int ) ;

__attribute__((used)) static u32 tcp_v6_init_ts_off(const struct net *net, const struct sk_buff *skb)
{
 return secure_tcpv6_ts_off(net, ipv6_hdr(skb)->daddr.s6_addr32,
       ipv6_hdr(skb)->saddr.s6_addr32);
}
