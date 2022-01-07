
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct netlink_ext_ack {int dummy; } ;
struct net_device {int dummy; } ;
struct TYPE_2__ {int mc_autojoin_sk; } ;
struct net {TYPE_1__ ipv6; } ;
struct inet6_ifaddr {int flags; int rt_priority; int prefix_len; int addr; } ;
struct inet6_dev {int flags; int rt_priority; int prefix_len; int addr; } ;
struct ifa6_config {int plen; unsigned long valid_lft; unsigned long preferred_lft; int ifa_flags; int pfx; int scope; } ;
typedef scalar_t__ clock_t ;


 int ASSERT_RTNL () ;
 int EINVAL ;
 int ENODEV ;
 int GFP_KERNEL ;
 unsigned long HZ ;
 int IFA_F_DEPRECATED ;
 int IFA_F_MANAGETEMPADDR ;
 int IFA_F_MCAUTOJOIN ;
 int IFA_F_NODAD ;
 int IFA_F_NOPREFIXROUTE ;
 int IFA_F_OPTIMISTIC ;
 int IFA_F_PERMANENT ;
 scalar_t__ IS_ERR (struct inet6_ifaddr*) ;
 int PTR_ERR (struct inet6_ifaddr*) ;
 scalar_t__ RTF_EXPIRES ;
 struct net_device* __dev_get_by_index (struct net*,int) ;
 struct inet6_ifaddr* addrconf_add_dev (struct net_device*) ;
 int addrconf_dad_start (struct inet6_ifaddr*) ;
 scalar_t__ addrconf_finite_timeout (unsigned long) ;
 int addrconf_prefix_route (int *,int ,int ,struct net_device*,scalar_t__,scalar_t__,int ) ;
 unsigned long addrconf_timeout_fixup (unsigned long,unsigned long) ;
 int addrconf_verify_rtnl () ;
 int in6_ifa_put (struct inet6_ifaddr*) ;
 struct inet6_ifaddr* ipv6_add_addr (struct inet6_ifaddr*,struct ifa6_config*,int,struct netlink_ext_ack*) ;
 int ipv6_addr_scope (int ) ;
 int ipv6_ifa_notify (int ,struct inet6_ifaddr*) ;
 int ipv6_mc_config (int ,int,int ,int) ;
 int jiffies ;
 scalar_t__ jiffies_to_clock_t (unsigned long) ;
 int manage_tempaddrs (struct inet6_ifaddr*,struct inet6_ifaddr*,unsigned long,unsigned long,int,int ) ;

__attribute__((used)) static int inet6_addr_add(struct net *net, int ifindex,
     struct ifa6_config *cfg,
     struct netlink_ext_ack *extack)
{
 struct inet6_ifaddr *ifp;
 struct inet6_dev *idev;
 struct net_device *dev;
 unsigned long timeout;
 clock_t expires;
 u32 flags;

 ASSERT_RTNL();

 if (cfg->plen > 128)
  return -EINVAL;


 if (!cfg->valid_lft || cfg->preferred_lft > cfg->valid_lft)
  return -EINVAL;

 if (cfg->ifa_flags & IFA_F_MANAGETEMPADDR && cfg->plen != 64)
  return -EINVAL;

 dev = __dev_get_by_index(net, ifindex);
 if (!dev)
  return -ENODEV;

 idev = addrconf_add_dev(dev);
 if (IS_ERR(idev))
  return PTR_ERR(idev);

 if (cfg->ifa_flags & IFA_F_MCAUTOJOIN) {
  int ret = ipv6_mc_config(net->ipv6.mc_autojoin_sk,
      1, cfg->pfx, ifindex);

  if (ret < 0)
   return ret;
 }

 cfg->scope = ipv6_addr_scope(cfg->pfx);

 timeout = addrconf_timeout_fixup(cfg->valid_lft, HZ);
 if (addrconf_finite_timeout(timeout)) {
  expires = jiffies_to_clock_t(timeout * HZ);
  cfg->valid_lft = timeout;
  flags = RTF_EXPIRES;
 } else {
  expires = 0;
  flags = 0;
  cfg->ifa_flags |= IFA_F_PERMANENT;
 }

 timeout = addrconf_timeout_fixup(cfg->preferred_lft, HZ);
 if (addrconf_finite_timeout(timeout)) {
  if (timeout == 0)
   cfg->ifa_flags |= IFA_F_DEPRECATED;
  cfg->preferred_lft = timeout;
 }

 ifp = ipv6_add_addr(idev, cfg, 1, extack);
 if (!IS_ERR(ifp)) {
  if (!(cfg->ifa_flags & IFA_F_NOPREFIXROUTE)) {
   addrconf_prefix_route(&ifp->addr, ifp->prefix_len,
           ifp->rt_priority, dev, expires,
           flags, GFP_KERNEL);
  }




  if (!(ifp->flags & (IFA_F_OPTIMISTIC | IFA_F_NODAD)))
   ipv6_ifa_notify(0, ifp);





  addrconf_dad_start(ifp);
  if (cfg->ifa_flags & IFA_F_MANAGETEMPADDR)
   manage_tempaddrs(idev, ifp, cfg->valid_lft,
      cfg->preferred_lft, 1, jiffies);
  in6_ifa_put(ifp);
  addrconf_verify_rtnl();
  return 0;
 } else if (cfg->ifa_flags & IFA_F_MCAUTOJOIN) {
  ipv6_mc_config(net->ipv6.mc_autojoin_sk, 0,
          cfg->pfx, ifindex);
 }

 return PTR_ERR(ifp);
}
