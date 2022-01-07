
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inet6_ifaddr {int dad_work; } ;


 int __in6_ifa_put (struct inet6_ifaddr*) ;
 scalar_t__ cancel_delayed_work (int *) ;

__attribute__((used)) static void addrconf_del_dad_work(struct inet6_ifaddr *ifp)
{
 if (cancel_delayed_work(&ifp->dad_work))
  __in6_ifa_put(ifp);
}
