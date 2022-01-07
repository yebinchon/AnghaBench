
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtnl_link {int dummy; } ;


 int BUG_ON (int) ;
 int ENOENT ;
 int RTNL_FAMILY_MAX ;
 int kfree_rcu (struct rtnl_link*,int ) ;
 int rcu ;
 int rcu_assign_pointer (struct rtnl_link*,int *) ;
 int rtm_msgindex (int) ;
 struct rtnl_link** rtnl_dereference (int ) ;
 int rtnl_lock () ;
 int * rtnl_msg_handlers ;
 int rtnl_unlock () ;

int rtnl_unregister(int protocol, int msgtype)
{
 struct rtnl_link **tab, *link;
 int msgindex;

 BUG_ON(protocol < 0 || protocol > RTNL_FAMILY_MAX);
 msgindex = rtm_msgindex(msgtype);

 rtnl_lock();
 tab = rtnl_dereference(rtnl_msg_handlers[protocol]);
 if (!tab) {
  rtnl_unlock();
  return -ENOENT;
 }

 link = tab[msgindex];
 rcu_assign_pointer(tab[msgindex], ((void*)0));
 rtnl_unlock();

 kfree_rcu(link, rcu);

 return 0;
}
