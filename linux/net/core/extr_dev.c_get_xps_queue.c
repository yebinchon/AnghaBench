
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xps_dev_maps {int dummy; } ;
struct sock {int dummy; } ;
struct sk_buff {int sender_cpu; struct sock* sk; } ;
struct net_device {int num_rx_queues; int xps_cpus_map; int xps_rxqs_map; } ;


 int __get_xps_queue_idx (struct net_device*,struct sk_buff*,struct xps_dev_maps*,unsigned int) ;
 struct xps_dev_maps* rcu_dereference (int ) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;
 int sk_rx_queue_get (struct sock*) ;
 int static_key_false (int *) ;
 int xps_needed ;
 int xps_rxqs_needed ;

__attribute__((used)) static int get_xps_queue(struct net_device *dev, struct net_device *sb_dev,
    struct sk_buff *skb)
{
 return -1;

}
