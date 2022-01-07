
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dev; } ;
struct rps_dev_flow {int last_qtail; } ;


 int NET_RX_SUCCESS ;
 int __netif_receive_skb (struct sk_buff*) ;
 int enqueue_to_backlog (struct sk_buff*,int,int *) ;
 int get_rps_cpu (int ,struct sk_buff*,struct rps_dev_flow**) ;
 int net_timestamp_check (int ,struct sk_buff*) ;
 int netdev_tstamp_prequeue ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;
 int rps_needed ;
 scalar_t__ skb_defer_rx_timestamp (struct sk_buff*) ;
 scalar_t__ static_branch_unlikely (int *) ;

__attribute__((used)) static int netif_receive_skb_internal(struct sk_buff *skb)
{
 int ret;

 net_timestamp_check(netdev_tstamp_prequeue, skb);

 if (skb_defer_rx_timestamp(skb))
  return NET_RX_SUCCESS;

 rcu_read_lock();
 ret = __netif_receive_skb(skb);
 rcu_read_unlock();
 return ret;
}
