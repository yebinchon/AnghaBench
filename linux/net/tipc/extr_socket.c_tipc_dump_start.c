
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct netlink_callback {TYPE_1__* skb; } ;
struct TYPE_2__ {int sk; } ;


 int __tipc_dump_start (struct netlink_callback*,int ) ;
 int sock_net (int ) ;

int tipc_dump_start(struct netlink_callback *cb)
{
 return __tipc_dump_start(cb, sock_net(cb->skb->sk));
}
