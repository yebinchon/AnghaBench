
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;


 int do_softirq () ;
 scalar_t__ local_softirq_pending () ;
 int netif_rx_internal (struct sk_buff*) ;
 int preempt_disable () ;
 int preempt_enable () ;
 int trace_netif_rx_ni_entry (struct sk_buff*) ;
 int trace_netif_rx_ni_exit (int) ;

int netif_rx_ni(struct sk_buff *skb)
{
 int err;

 trace_netif_rx_ni_entry(skb);

 preempt_disable();
 err = netif_rx_internal(skb);
 if (local_softirq_pending())
  do_softirq();
 preempt_enable();
 trace_netif_rx_ni_exit(err);

 return err;
}
