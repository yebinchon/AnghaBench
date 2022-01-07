
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct inet6_ifaddr {int state; int flags; TYPE_1__* idev; int if_list; struct inet6_ifaddr* ifpub; int tmp_list; int addr_lst; int lock; } ;
typedef enum cleanup_prefix_rt_t { ____Placeholder_cleanup_prefix_rt_t } cleanup_prefix_rt_t ;
struct TYPE_2__ {int lock; } ;


 int ASSERT_RTNL () ;
 int CLEANUP_PREFIX_RT_DEL ;
 int CLEANUP_PREFIX_RT_NOP ;
 int IFA_F_NOPREFIXROUTE ;
 int IFA_F_PERMANENT ;
 int IFA_F_TEMPORARY ;
 int INET6_IFADDR_STATE_DEAD ;
 int NETDEV_DOWN ;
 int RTM_DELADDR ;
 int __in6_ifa_put (struct inet6_ifaddr*) ;
 int addrconf_del_dad_work (struct inet6_ifaddr*) ;
 int addrconf_hash_lock ;
 int check_cleanup_prefix_route (struct inet6_ifaddr*,unsigned long*) ;
 int cleanup_prefix_route (struct inet6_ifaddr*,unsigned long,int) ;
 int hlist_del_init_rcu (int *) ;
 int in6_ifa_put (struct inet6_ifaddr*) ;
 int inet6addr_notifier_call_chain (int ,struct inet6_ifaddr*) ;
 int ipv6_ifa_notify (int ,struct inet6_ifaddr*) ;
 int list_del (int *) ;
 int list_del_rcu (int *) ;
 int rt6_remove_prefsrc (struct inet6_ifaddr*) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;
 int write_lock_bh (int *) ;
 int write_unlock_bh (int *) ;

__attribute__((used)) static void ipv6_del_addr(struct inet6_ifaddr *ifp)
{
 int state;
 enum cleanup_prefix_rt_t action = CLEANUP_PREFIX_RT_NOP;
 unsigned long expires;

 ASSERT_RTNL();

 spin_lock_bh(&ifp->lock);
 state = ifp->state;
 ifp->state = INET6_IFADDR_STATE_DEAD;
 spin_unlock_bh(&ifp->lock);

 if (state == INET6_IFADDR_STATE_DEAD)
  goto out;

 spin_lock_bh(&addrconf_hash_lock);
 hlist_del_init_rcu(&ifp->addr_lst);
 spin_unlock_bh(&addrconf_hash_lock);

 write_lock_bh(&ifp->idev->lock);

 if (ifp->flags&IFA_F_TEMPORARY) {
  list_del(&ifp->tmp_list);
  if (ifp->ifpub) {
   in6_ifa_put(ifp->ifpub);
   ifp->ifpub = ((void*)0);
  }
  __in6_ifa_put(ifp);
 }

 if (ifp->flags & IFA_F_PERMANENT && !(ifp->flags & IFA_F_NOPREFIXROUTE))
  action = check_cleanup_prefix_route(ifp, &expires);

 list_del_rcu(&ifp->if_list);
 __in6_ifa_put(ifp);

 write_unlock_bh(&ifp->idev->lock);

 addrconf_del_dad_work(ifp);

 ipv6_ifa_notify(RTM_DELADDR, ifp);

 inet6addr_notifier_call_chain(NETDEV_DOWN, ifp);

 if (action != CLEANUP_PREFIX_RT_NOP) {
  cleanup_prefix_route(ifp, expires,
   action == CLEANUP_PREFIX_RT_DEL);
 }


 rt6_remove_prefsrc(ifp);
out:
 in6_ifa_put(ifp);
}
