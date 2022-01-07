
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct netlink_callback {int dummy; } ;


 int __tipc_nl_add_sk ;
 int tipc_nl_sk_walk (struct sk_buff*,struct netlink_callback*,int ) ;

int tipc_nl_sk_dump(struct sk_buff *skb, struct netlink_callback *cb)
{
 return tipc_nl_sk_walk(skb, cb, __tipc_nl_add_sk);
}
