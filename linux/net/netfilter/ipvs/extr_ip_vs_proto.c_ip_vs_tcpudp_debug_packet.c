
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct ip_vs_protocol {int dummy; } ;


 int AF_INET6 ;
 int ip_vs_tcpudp_debug_packet_v4 (struct ip_vs_protocol*,struct sk_buff const*,int,char const*) ;
 int ip_vs_tcpudp_debug_packet_v6 (struct ip_vs_protocol*,struct sk_buff const*,int,char const*) ;

void
ip_vs_tcpudp_debug_packet(int af, struct ip_vs_protocol *pp,
     const struct sk_buff *skb,
     int offset,
     const char *msg)
{





  ip_vs_tcpudp_debug_packet_v4(pp, skb, offset, msg);
}
