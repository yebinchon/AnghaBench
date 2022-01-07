
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;


 int IPPROTO_IPIP ;
 int ipip_tunnel_rcv (struct sk_buff*,int ) ;

__attribute__((used)) static int ipip_rcv(struct sk_buff *skb)
{
 return ipip_tunnel_rcv(skb, IPPROTO_IPIP);
}
