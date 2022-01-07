
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;


 int netif_rx_internal (struct sk_buff*) ;
 int trace_netif_rx_entry (struct sk_buff*) ;
 int trace_netif_rx_exit (int) ;

int netif_rx(struct sk_buff *skb)
{
 int ret;

 trace_netif_rx_entry(skb);

 ret = netif_rx_internal(skb);
 trace_netif_rx_exit(ret);

 return ret;
}
