
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sk_buff {int dummy; } ;
struct net_device {int dummy; } ;
struct TYPE_3__ {struct can_dev_rcv_lists* rx_alldev_list; struct can_pkg_stats* pkg_stats; } ;
struct net {TYPE_1__ can; } ;
struct can_pkg_stats {int matches_delta; int matches; int rx_frames_delta; int rx_frames; } ;
struct can_dev_rcv_lists {int dummy; } ;
struct TYPE_4__ {scalar_t__ skbcnt; } ;


 scalar_t__ atomic_inc_return (int *) ;
 struct can_dev_rcv_lists* can_dev_rcv_lists_find (struct net*,struct net_device*) ;
 int can_rcv_filter (struct can_dev_rcv_lists*,struct sk_buff*) ;
 TYPE_2__* can_skb_prv (struct sk_buff*) ;
 int consume_skb (struct sk_buff*) ;
 struct net* dev_net (struct net_device*) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;
 int skbcounter ;

__attribute__((used)) static void can_receive(struct sk_buff *skb, struct net_device *dev)
{
 struct can_dev_rcv_lists *dev_rcv_lists;
 struct net *net = dev_net(dev);
 struct can_pkg_stats *pkg_stats = net->can.pkg_stats;
 int matches;


 pkg_stats->rx_frames++;
 pkg_stats->rx_frames_delta++;


 while (!(can_skb_prv(skb)->skbcnt))
  can_skb_prv(skb)->skbcnt = atomic_inc_return(&skbcounter);

 rcu_read_lock();


 matches = can_rcv_filter(net->can.rx_alldev_list, skb);


 dev_rcv_lists = can_dev_rcv_lists_find(net, dev);
 matches += can_rcv_filter(dev_rcv_lists, skb);

 rcu_read_unlock();


 consume_skb(skb);

 if (matches > 0) {
  pkg_stats->matches++;
  pkg_stats->matches_delta++;
 }
}
