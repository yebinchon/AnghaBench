
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct net_device {int flags; } ;
struct inet6_ifaddr {scalar_t__ scope; int flags; TYPE_5__* idev; int lock; int addr; } ;
struct in6_addr {int dummy; } ;
struct TYPE_11__ {scalar_t__ rtr_solicits; int rtr_solicit_interval; int forwarding; scalar_t__ ndisc_notify; } ;
struct TYPE_13__ {int rs_probes; int lock; int rs_interval; int if_flags; TYPE_3__ cnf; struct net_device* dev; } ;
struct TYPE_10__ {TYPE_1__* devconf_all; } ;
struct TYPE_12__ {TYPE_2__ ipv6; } ;
struct TYPE_9__ {scalar_t__ ndisc_notify; } ;


 int IFA_F_TEMPORARY ;
 int IFA_F_TENTATIVE ;
 scalar_t__ IFA_LINK ;
 int IFF_LOOPBACK ;
 int IF_RS_SENT ;
 int RTM_NEWADDR ;
 int addrconf_del_dad_work (struct inet6_ifaddr*) ;
 int addrconf_mod_rs_timer (TYPE_5__*,int ) ;
 int addrconf_verify_rtnl () ;
 TYPE_4__* dev_net (struct net_device*) ;
 int in6addr_linklocal_allnodes ;
 int in6addr_linklocal_allrouters ;
 scalar_t__ ipv6_accept_ra (TYPE_5__*) ;
 scalar_t__ ipv6_get_lladdr (struct net_device*,struct in6_addr*,int ) ;
 int ipv6_ifa_notify (int ,struct inet6_ifaddr*) ;
 scalar_t__ ipv6_lonely_lladdr (struct inet6_ifaddr*) ;
 int ipv6_mc_dad_complete (TYPE_5__*) ;
 int ndisc_send_na (struct net_device*,int *,int *,int,int,int,int) ;
 int ndisc_send_rs (struct net_device*,struct in6_addr*,int *) ;
 int read_lock_bh (int *) ;
 int read_unlock_bh (int *) ;
 int rfc3315_s14_backoff_init (int ) ;
 int rt_genid_bump_ipv6 (TYPE_4__*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int write_lock_bh (int *) ;
 int write_unlock_bh (int *) ;

__attribute__((used)) static void addrconf_dad_completed(struct inet6_ifaddr *ifp, bool bump_id,
       bool send_na)
{
 struct net_device *dev = ifp->idev->dev;
 struct in6_addr lladdr;
 bool send_rs, send_mld;

 addrconf_del_dad_work(ifp);





 ipv6_ifa_notify(RTM_NEWADDR, ifp);





 read_lock_bh(&ifp->idev->lock);
 send_mld = ifp->scope == IFA_LINK && ipv6_lonely_lladdr(ifp);
 send_rs = send_mld &&
    ipv6_accept_ra(ifp->idev) &&
    ifp->idev->cnf.rtr_solicits != 0 &&
    (dev->flags&IFF_LOOPBACK) == 0;
 read_unlock_bh(&ifp->idev->lock);




 if (send_mld)
  ipv6_mc_dad_complete(ifp->idev);


 if (send_na &&
     (ifp->idev->cnf.ndisc_notify ||
      dev_net(dev)->ipv6.devconf_all->ndisc_notify)) {
  ndisc_send_na(dev, &in6addr_linklocal_allnodes, &ifp->addr,
                     !!ifp->idev->cnf.forwarding,
                        0, 1,
                      1);
 }

 if (send_rs) {





  if (ipv6_get_lladdr(dev, &lladdr, IFA_F_TENTATIVE))
   return;
  ndisc_send_rs(dev, &lladdr, &in6addr_linklocal_allrouters);

  write_lock_bh(&ifp->idev->lock);
  spin_lock(&ifp->lock);
  ifp->idev->rs_interval = rfc3315_s14_backoff_init(
   ifp->idev->cnf.rtr_solicit_interval);
  ifp->idev->rs_probes = 1;
  ifp->idev->if_flags |= IF_RS_SENT;
  addrconf_mod_rs_timer(ifp->idev, ifp->idev->rs_interval);
  spin_unlock(&ifp->lock);
  write_unlock_bh(&ifp->idev->lock);
 }

 if (bump_id)
  rt_genid_bump_ipv6(dev_net(dev));




 if (ifp->flags & IFA_F_TEMPORARY)
  addrconf_verify_rtnl();
}
