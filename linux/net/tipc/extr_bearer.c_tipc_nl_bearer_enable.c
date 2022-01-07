
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct genl_info {int dummy; } ;


 int __tipc_nl_bearer_enable (struct sk_buff*,struct genl_info*) ;
 int rtnl_lock () ;
 int rtnl_unlock () ;

int tipc_nl_bearer_enable(struct sk_buff *skb, struct genl_info *info)
{
 int err;

 rtnl_lock();
 err = __tipc_nl_bearer_enable(skb, info);
 rtnl_unlock();

 return err;
}
