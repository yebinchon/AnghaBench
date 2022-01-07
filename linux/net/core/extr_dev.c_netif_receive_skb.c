
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;


 int netif_receive_skb_internal (struct sk_buff*) ;
 int trace_netif_receive_skb_entry (struct sk_buff*) ;
 int trace_netif_receive_skb_exit (int) ;

int netif_receive_skb(struct sk_buff *skb)
{
 int ret;

 trace_netif_receive_skb_entry(skb);

 ret = netif_receive_skb_internal(skb);
 trace_netif_receive_skb_exit(ret);

 return ret;
}
