
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inet6_ifaddr {scalar_t__ state; int lock; } ;


 int ENOENT ;
 scalar_t__ INET6_IFADDR_STATE_DAD ;
 scalar_t__ INET6_IFADDR_STATE_POSTDAD ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

__attribute__((used)) static int addrconf_dad_end(struct inet6_ifaddr *ifp)
{
 int err = -ENOENT;

 spin_lock_bh(&ifp->lock);
 if (ifp->state == INET6_IFADDR_STATE_DAD) {
  ifp->state = INET6_IFADDR_STATE_POSTDAD;
  err = 0;
 }
 spin_unlock_bh(&ifp->lock);

 return err;
}
