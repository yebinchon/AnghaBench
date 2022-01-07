
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtnl_link {int dummy; } ;


 int ARRAY_SIZE (int *) ;
 size_t PF_UNSPEC ;
 struct rtnl_link** rcu_dereference_rtnl (int ) ;
 int * rtnl_msg_handlers ;

__attribute__((used)) static struct rtnl_link *rtnl_get_link(int protocol, int msgtype)
{
 struct rtnl_link **tab;

 if (protocol >= ARRAY_SIZE(rtnl_msg_handlers))
  protocol = PF_UNSPEC;

 tab = rcu_dereference_rtnl(rtnl_msg_handlers[protocol]);
 if (!tab)
  tab = rcu_dereference_rtnl(rtnl_msg_handlers[PF_UNSPEC]);

 return tab[msgtype];
}
