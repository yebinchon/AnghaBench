
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtnl_link {int dummy; } ;


 int BUG_ON (int) ;
 int RCU_INIT_POINTER (struct rtnl_link**,int *) ;
 int RTM_NR_MSGTYPES ;
 int RTNL_FAMILY_MAX ;
 int kfree (struct rtnl_link**) ;
 int kfree_rcu (struct rtnl_link*,int ) ;
 int rcu ;
 int rcu_assign_pointer (struct rtnl_link*,int *) ;
 int rtnl_lock () ;
 struct rtnl_link*** rtnl_msg_handlers ;
 int rtnl_unlock () ;
 int synchronize_net () ;

void rtnl_unregister_all(int protocol)
{
 struct rtnl_link **tab, *link;
 int msgindex;

 BUG_ON(protocol < 0 || protocol > RTNL_FAMILY_MAX);

 rtnl_lock();
 tab = rtnl_msg_handlers[protocol];
 if (!tab) {
  rtnl_unlock();
  return;
 }
 RCU_INIT_POINTER(rtnl_msg_handlers[protocol], ((void*)0));
 for (msgindex = 0; msgindex < RTM_NR_MSGTYPES; msgindex++) {
  link = tab[msgindex];
  if (!link)
   continue;

  rcu_assign_pointer(tab[msgindex], ((void*)0));
  kfree_rcu(link, rcu);
 }
 rtnl_unlock();

 synchronize_net();

 kfree(tab);
}
