
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff_head {int dummy; } ;
struct net {int loopback_dev; } ;


 int dev_nit_active (int ) ;
 int tipc_clone_to_loopback (struct net*,struct sk_buff_head*) ;
 scalar_t__ unlikely (int ) ;

__attribute__((used)) static inline void tipc_loopback_trace(struct net *net,
           struct sk_buff_head *pkts)
{
 if (unlikely(dev_nit_active(net->loopback_dev)))
  tipc_clone_to_loopback(net, pkts);
}
