
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct netlink_callback {int dummy; } ;


 int __tipc_add_sock_diag ;
 int tipc_nl_sk_walk (struct sk_buff*,struct netlink_callback*,int ) ;

__attribute__((used)) static int tipc_diag_dump(struct sk_buff *skb, struct netlink_callback *cb)
{
 return tipc_nl_sk_walk(skb, cb, __tipc_add_sock_diag);
}
