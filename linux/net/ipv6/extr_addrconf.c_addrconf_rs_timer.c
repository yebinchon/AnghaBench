
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct timer_list {int dummy; } ;
struct net_device {int name; } ;
struct TYPE_2__ {scalar_t__ rtr_solicits; int rtr_solicit_delay; int rtr_solicit_max_interval; } ;
struct inet6_dev {int if_flags; scalar_t__ rs_probes; int lock; struct net_device* dev; int rs_interval; TYPE_1__ cnf; scalar_t__ dead; } ;
struct in6_addr {int dummy; } ;


 int IFA_F_TENTATIVE ;
 int IF_RA_RCVD ;
 int IF_READY ;
 int addrconf_mod_rs_timer (struct inet6_dev*,int ) ;
 struct inet6_dev* from_timer (int ,struct timer_list*,int ) ;
 struct inet6_dev* idev ;
 int in6_dev_put (struct inet6_dev*) ;
 int in6addr_linklocal_allrouters ;
 int ipv6_accept_ra (struct inet6_dev*) ;
 int ipv6_get_lladdr (struct net_device*,struct in6_addr*,int ) ;
 int ndisc_send_rs (struct net_device*,struct in6_addr*,int *) ;
 int pr_debug (char*,int ) ;
 int rfc3315_s14_backoff_update (int ,int ) ;
 int rs_timer ;
 int write_lock (int *) ;
 int write_unlock (int *) ;

__attribute__((used)) static void addrconf_rs_timer(struct timer_list *t)
{
 struct inet6_dev *idev = from_timer(idev, t, rs_timer);
 struct net_device *dev = idev->dev;
 struct in6_addr lladdr;

 write_lock(&idev->lock);
 if (idev->dead || !(idev->if_flags & IF_READY))
  goto out;

 if (!ipv6_accept_ra(idev))
  goto out;


 if (idev->if_flags & IF_RA_RCVD)
  goto out;

 if (idev->rs_probes++ < idev->cnf.rtr_solicits || idev->cnf.rtr_solicits < 0) {
  write_unlock(&idev->lock);
  if (!ipv6_get_lladdr(dev, &lladdr, IFA_F_TENTATIVE))
   ndisc_send_rs(dev, &lladdr,
          &in6addr_linklocal_allrouters);
  else
   goto put;

  write_lock(&idev->lock);
  idev->rs_interval = rfc3315_s14_backoff_update(
   idev->rs_interval, idev->cnf.rtr_solicit_max_interval);

  addrconf_mod_rs_timer(idev, (idev->rs_probes ==
          idev->cnf.rtr_solicits) ?
          idev->cnf.rtr_solicit_delay :
          idev->rs_interval);
 } else {




  pr_debug("%s: no IPv6 routers present\n", idev->dev->name);
 }

out:
 write_unlock(&idev->lock);
put:
 in6_dev_put(idev);
}
