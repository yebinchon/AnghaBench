
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inet6_ifaddr {int dad_work; } ;


 int addrconf_wq ;
 int in6_ifa_hold (struct inet6_ifaddr*) ;
 int in6_ifa_put (struct inet6_ifaddr*) ;
 scalar_t__ mod_delayed_work (int ,int *,unsigned long) ;

__attribute__((used)) static void addrconf_mod_dad_work(struct inet6_ifaddr *ifp,
       unsigned long delay)
{
 in6_ifa_hold(ifp);
 if (mod_delayed_work(addrconf_wq, &ifp->dad_work, delay))
  in6_ifa_put(ifp);
}
