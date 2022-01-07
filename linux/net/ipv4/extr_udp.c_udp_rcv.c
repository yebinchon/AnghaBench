
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;


 int IPPROTO_UDP ;
 int __udp4_lib_rcv (struct sk_buff*,int *,int ) ;
 int udp_table ;

int udp_rcv(struct sk_buff *skb)
{
 return __udp4_lib_rcv(skb, &udp_table, IPPROTO_UDP);
}
