
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inet6_ifaddr {int flags; int lock; struct inet6_ifaddr* ifpub; } ;


 int IFA_F_DADFAILED ;
 int IFA_F_OPTIMISTIC ;
 int IFA_F_PERMANENT ;
 int IFA_F_TEMPORARY ;
 int IFA_F_TENTATIVE ;
 int addrconf_del_dad_work (struct inet6_ifaddr*) ;
 int in6_ifa_hold (struct inet6_ifaddr*) ;
 int in6_ifa_put (struct inet6_ifaddr*) ;
 int ipv6_create_tempaddr (struct inet6_ifaddr*,struct inet6_ifaddr*,int) ;
 int ipv6_del_addr (struct inet6_ifaddr*) ;
 int ipv6_ifa_notify (int ,struct inet6_ifaddr*) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

__attribute__((used)) static void addrconf_dad_stop(struct inet6_ifaddr *ifp, int dad_failed)
{
 if (dad_failed)
  ifp->flags |= IFA_F_DADFAILED;

 if (ifp->flags&IFA_F_TEMPORARY) {
  struct inet6_ifaddr *ifpub;
  spin_lock_bh(&ifp->lock);
  ifpub = ifp->ifpub;
  if (ifpub) {
   in6_ifa_hold(ifpub);
   spin_unlock_bh(&ifp->lock);
   ipv6_create_tempaddr(ifpub, ifp, 1);
   in6_ifa_put(ifpub);
  } else {
   spin_unlock_bh(&ifp->lock);
  }
  ipv6_del_addr(ifp);
 } else if (ifp->flags&IFA_F_PERMANENT || !dad_failed) {
  spin_lock_bh(&ifp->lock);
  addrconf_del_dad_work(ifp);
  ifp->flags |= IFA_F_TENTATIVE;
  if (dad_failed)
   ifp->flags &= ~IFA_F_OPTIMISTIC;
  spin_unlock_bh(&ifp->lock);
  if (dad_failed)
   ipv6_ifa_notify(0, ifp);
  in6_ifa_put(ifp);
 } else {
  ipv6_del_addr(ifp);
 }
}
