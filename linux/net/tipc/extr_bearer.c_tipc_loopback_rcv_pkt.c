
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct packet_type {int dummy; } ;
struct net_device {int dummy; } ;


 int NET_RX_SUCCESS ;
 int consume_skb (struct sk_buff*) ;

__attribute__((used)) static int tipc_loopback_rcv_pkt(struct sk_buff *skb, struct net_device *dev,
     struct packet_type *pt, struct net_device *od)
{
 consume_skb(skb);
 return NET_RX_SUCCESS;
}
