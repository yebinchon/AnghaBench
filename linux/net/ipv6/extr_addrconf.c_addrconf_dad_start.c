
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inet6_ifaddr {scalar_t__ state; int lock; } ;


 scalar_t__ INET6_IFADDR_STATE_DEAD ;
 scalar_t__ INET6_IFADDR_STATE_PREDAD ;
 int addrconf_mod_dad_work (struct inet6_ifaddr*,int ) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

__attribute__((used)) static void addrconf_dad_start(struct inet6_ifaddr *ifp)
{
 bool begin_dad = 0;

 spin_lock_bh(&ifp->lock);
 if (ifp->state != INET6_IFADDR_STATE_DEAD) {
  ifp->state = INET6_IFADDR_STATE_PREDAD;
  begin_dad = 1;
 }
 spin_unlock_bh(&ifp->lock);

 if (begin_dad)
  addrconf_mod_dad_work(ifp, 0);
}
