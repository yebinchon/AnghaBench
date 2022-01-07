
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct inet6_ifaddr {TYPE_1__* idev; } ;
struct TYPE_2__ {scalar_t__ dead; } ;


 int __ipv6_ifa_notify (int,struct inet6_ifaddr*) ;
 scalar_t__ likely (int) ;
 int rcu_read_lock_bh () ;
 int rcu_read_unlock_bh () ;

__attribute__((used)) static void ipv6_ifa_notify(int event, struct inet6_ifaddr *ifp)
{
 rcu_read_lock_bh();
 if (likely(ifp->idev->dead == 0))
  __ipv6_ifa_notify(event, ifp);
 rcu_read_unlock_bh();
}
