
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff {int sk; } ;
struct TYPE_2__ {int user_ns; } ;


 int netlink_ns_capable (struct sk_buff const*,int ,int) ;
 TYPE_1__* sock_net (int ) ;

bool netlink_net_capable(const struct sk_buff *skb, int cap)
{
 return netlink_ns_capable(skb, sock_net(skb->sk)->user_ns, cap);
}
