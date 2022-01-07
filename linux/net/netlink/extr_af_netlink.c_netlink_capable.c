
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;


 int init_user_ns ;
 int netlink_ns_capable (struct sk_buff const*,int *,int) ;

bool netlink_capable(const struct sk_buff *skb, int cap)
{
 return netlink_ns_capable(skb, &init_user_ns, cap);
}
