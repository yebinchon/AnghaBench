
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {int dummy; } ;
struct net_device {int dummy; } ;
struct net {int dummy; } ;
struct can_filter {int can_mask; int can_id; } ;


 int can_rx_unregister (struct net*,struct net_device*,int ,int ,int ,struct sock*) ;
 int raw_rcv ;

__attribute__((used)) static void raw_disable_filters(struct net *net, struct net_device *dev,
    struct sock *sk, struct can_filter *filter,
    int count)
{
 int i;

 for (i = 0; i < count; i++)
  can_rx_unregister(net, dev, filter[i].can_id,
      filter[i].can_mask, raw_rcv, sk);
}
