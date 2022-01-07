
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;


 int IPPROTO_IPIP ;
 int ip4ip6_dscp_ecn_decapsulate ;
 int ipxip6_rcv (struct sk_buff*,int ,int *,int ) ;
 int tpi_v4 ;

__attribute__((used)) static int ip4ip6_rcv(struct sk_buff *skb)
{
 return ipxip6_rcv(skb, IPPROTO_IPIP, &tpi_v4,
     ip4ip6_dscp_ecn_decapsulate);
}
