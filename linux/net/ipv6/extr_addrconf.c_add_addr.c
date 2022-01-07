
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inet6_ifaddr {int lock; int flags; } ;
struct inet6_dev {int dev; } ;
struct in6_addr {int dummy; } ;
struct ifa6_config {int plen; int scope; int preferred_lft; int valid_lft; int ifa_flags; struct in6_addr const* pfx; } ;


 int IFA_F_PERMANENT ;
 int IFA_F_TENTATIVE ;
 int INFINITY_LIFE_TIME ;
 int IS_ERR (struct inet6_ifaddr*) ;
 int RTM_NEWADDR ;
 int dev_net (int ) ;
 int in6_ifa_put (struct inet6_ifaddr*) ;
 struct inet6_ifaddr* ipv6_add_addr (struct inet6_dev*,struct ifa6_config*,int,int *) ;
 int ipv6_ifa_notify (int ,struct inet6_ifaddr*) ;
 int rt_genid_bump_ipv6 (int ) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

__attribute__((used)) static void add_addr(struct inet6_dev *idev, const struct in6_addr *addr,
       int plen, int scope)
{
 struct inet6_ifaddr *ifp;
 struct ifa6_config cfg = {
  .pfx = addr,
  .plen = plen,
  .ifa_flags = IFA_F_PERMANENT,
  .valid_lft = INFINITY_LIFE_TIME,
  .preferred_lft = INFINITY_LIFE_TIME,
  .scope = scope
 };

 ifp = ipv6_add_addr(idev, &cfg, 1, ((void*)0));
 if (!IS_ERR(ifp)) {
  spin_lock_bh(&ifp->lock);
  ifp->flags &= ~IFA_F_TENTATIVE;
  spin_unlock_bh(&ifp->lock);
  rt_genid_bump_ipv6(dev_net(idev->dev));
  ipv6_ifa_notify(RTM_NEWADDR, ifp);
  in6_ifa_put(ifp);
 }
}
