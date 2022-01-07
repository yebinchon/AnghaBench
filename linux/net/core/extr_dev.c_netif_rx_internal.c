
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dev; } ;
struct rps_dev_flow {unsigned int last_qtail; } ;


 int enqueue_to_backlog (struct sk_buff*,int,unsigned int*) ;
 int get_cpu () ;
 int get_rps_cpu (int ,struct sk_buff*,struct rps_dev_flow**) ;
 int net_timestamp_check (int ,struct sk_buff*) ;
 int netdev_tstamp_prequeue ;
 int preempt_disable () ;
 int preempt_enable () ;
 int put_cpu () ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;
 int rps_needed ;
 int smp_processor_id () ;
 scalar_t__ static_branch_unlikely (int *) ;
 int trace_netif_rx (struct sk_buff*) ;

__attribute__((used)) static int netif_rx_internal(struct sk_buff *skb)
{
 int ret;

 net_timestamp_check(netdev_tstamp_prequeue, skb);

 trace_netif_rx(skb);
 {
  unsigned int qtail;

  ret = enqueue_to_backlog(skb, get_cpu(), &qtail);
  put_cpu();
 }
 return ret;
}
