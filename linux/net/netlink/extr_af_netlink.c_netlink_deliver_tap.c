
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct netlink_tap_net {int netlink_tap_all; } ;
struct net {int dummy; } ;


 int __netlink_deliver_tap (struct sk_buff*,struct netlink_tap_net*) ;
 int list_empty (int *) ;
 struct netlink_tap_net* net_generic (struct net*,int ) ;
 int netlink_tap_net_id ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static void netlink_deliver_tap(struct net *net, struct sk_buff *skb)
{
 struct netlink_tap_net *nn = net_generic(net, netlink_tap_net_id);

 rcu_read_lock();

 if (unlikely(!list_empty(&nn->netlink_tap_all)))
  __netlink_deliver_tap(skb, nn);

 rcu_read_unlock();
}
