
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct netlink_ext_ack {int dummy; } ;
struct TYPE_8__ {TYPE_1__* devconf_all; } ;
struct net {TYPE_2__ ipv6; } ;
struct inet6_ifaddr {int flags; int tokenized; struct inet6_dev* idev; int tmp_list; int refcnt; struct fib6_info* rt; int tstamp; int cstamp; int prefered_lft; int valid_lft; int rt_priority; int prefix_len; int scope; int addr_lst; int dad_work; int lock; int peer_addr; int addr; } ;
struct TYPE_9__ {scalar_t__ disable_policy; scalar_t__ disable_ipv6; } ;
struct inet6_dev {int lock; int tempaddr_list; TYPE_4__* dev; int nd_parms; TYPE_3__ cnf; scalar_t__ dead; } ;
struct in6_validator_info {struct netlink_ext_ack* extack; struct inet6_dev* i6vi_dev; int i6vi_addr; } ;
struct ifa6_config {int ifa_flags; int preferred_lft; int valid_lft; int rt_priority; int plen; int scope; int * peer_pfx; int * pfx; } ;
struct fib6_info {int dst_nopolicy; } ;
typedef int gfp_t ;
struct TYPE_10__ {int flags; } ;
struct TYPE_7__ {scalar_t__ disable_policy; } ;


 int EACCES ;
 int EADDRNOTAVAIL ;
 int ENOBUFS ;
 int ENODEV ;
 struct inet6_ifaddr* ERR_PTR (int) ;
 int GFP_ATOMIC ;
 int GFP_KERNEL ;
 int IFA_F_MCAUTOJOIN ;
 int IFA_F_NODAD ;
 int IFA_F_TEMPORARY ;
 int IFA_F_TENTATIVE ;
 int IFF_LOOPBACK ;
 int INIT_DELAYED_WORK (int *,int ) ;
 int INIT_HLIST_NODE (int *) ;
 int IPV6_ADDR_ANY ;
 int IPV6_ADDR_LOOPBACK ;
 int IPV6_ADDR_MULTICAST ;
 scalar_t__ IS_ERR (struct fib6_info*) ;
 int NETDEV_UP ;
 int PTR_ERR (struct fib6_info*) ;
 int addrconf_dad_work ;
 struct fib6_info* addrconf_f6i_alloc (struct net*,struct inet6_dev*,int *,int,int ) ;
 struct net* dev_net (TYPE_4__*) ;
 int fib6_info_release (struct fib6_info*) ;
 int in6_dev_hold (struct inet6_dev*) ;
 int in6_dev_put (struct inet6_dev*) ;
 int in6_ifa_hold (struct inet6_ifaddr*) ;
 int inet6addr_notifier_call_chain (int ,struct inet6_ifaddr*) ;
 int inet6addr_validator_notifier_call_chain (int ,struct in6_validator_info*) ;
 int ipv6_add_addr_hash (TYPE_4__*,struct inet6_ifaddr*) ;
 int ipv6_addr_type (int *) ;
 int ipv6_link_dev_addr (struct inet6_dev*,struct inet6_ifaddr*) ;
 int jiffies ;
 int kfree (struct inet6_ifaddr*) ;
 struct inet6_ifaddr* kzalloc (int,int ) ;
 int list_add (int *,int *) ;
 int neigh_parms_data_state_setall (int ) ;
 int netif_is_l3_master (TYPE_4__*) ;
 int notifier_to_errno (int) ;
 int rcu_read_lock_bh () ;
 int rcu_read_unlock_bh () ;
 int refcount_set (int *,int) ;
 int spin_lock_init (int *) ;
 scalar_t__ unlikely (int) ;
 int write_lock (int *) ;
 int write_unlock (int *) ;

__attribute__((used)) static struct inet6_ifaddr *
ipv6_add_addr(struct inet6_dev *idev, struct ifa6_config *cfg,
       bool can_block, struct netlink_ext_ack *extack)
{
 gfp_t gfp_flags = can_block ? GFP_KERNEL : GFP_ATOMIC;
 int addr_type = ipv6_addr_type(cfg->pfx);
 struct net *net = dev_net(idev->dev);
 struct inet6_ifaddr *ifa = ((void*)0);
 struct fib6_info *f6i = ((void*)0);
 int err = 0;

 if (addr_type == IPV6_ADDR_ANY ||
     (addr_type & IPV6_ADDR_MULTICAST &&
      !(cfg->ifa_flags & IFA_F_MCAUTOJOIN)) ||
     (!(idev->dev->flags & IFF_LOOPBACK) &&
      !netif_is_l3_master(idev->dev) &&
      addr_type & IPV6_ADDR_LOOPBACK))
  return ERR_PTR(-EADDRNOTAVAIL);

 if (idev->dead) {
  err = -ENODEV;
  goto out;
 }

 if (idev->cnf.disable_ipv6) {
  err = -EACCES;
  goto out;
 }




 if (can_block) {
  struct in6_validator_info i6vi = {
   .i6vi_addr = *cfg->pfx,
   .i6vi_dev = idev,
   .extack = extack,
  };

  err = inet6addr_validator_notifier_call_chain(NETDEV_UP, &i6vi);
  err = notifier_to_errno(err);
  if (err < 0)
   goto out;
 }

 ifa = kzalloc(sizeof(*ifa), gfp_flags);
 if (!ifa) {
  err = -ENOBUFS;
  goto out;
 }

 f6i = addrconf_f6i_alloc(net, idev, cfg->pfx, 0, gfp_flags);
 if (IS_ERR(f6i)) {
  err = PTR_ERR(f6i);
  f6i = ((void*)0);
  goto out;
 }

 if (net->ipv6.devconf_all->disable_policy ||
     idev->cnf.disable_policy)
  f6i->dst_nopolicy = 1;

 neigh_parms_data_state_setall(idev->nd_parms);

 ifa->addr = *cfg->pfx;
 if (cfg->peer_pfx)
  ifa->peer_addr = *cfg->peer_pfx;

 spin_lock_init(&ifa->lock);
 INIT_DELAYED_WORK(&ifa->dad_work, addrconf_dad_work);
 INIT_HLIST_NODE(&ifa->addr_lst);
 ifa->scope = cfg->scope;
 ifa->prefix_len = cfg->plen;
 ifa->rt_priority = cfg->rt_priority;
 ifa->flags = cfg->ifa_flags;

 if (!(cfg->ifa_flags & IFA_F_NODAD))
  ifa->flags |= IFA_F_TENTATIVE;
 ifa->valid_lft = cfg->valid_lft;
 ifa->prefered_lft = cfg->preferred_lft;
 ifa->cstamp = ifa->tstamp = jiffies;
 ifa->tokenized = 0;

 ifa->rt = f6i;

 ifa->idev = idev;
 in6_dev_hold(idev);


 refcount_set(&ifa->refcnt, 1);

 rcu_read_lock_bh();

 err = ipv6_add_addr_hash(idev->dev, ifa);
 if (err < 0) {
  rcu_read_unlock_bh();
  goto out;
 }

 write_lock(&idev->lock);


 ipv6_link_dev_addr(idev, ifa);

 if (ifa->flags&IFA_F_TEMPORARY) {
  list_add(&ifa->tmp_list, &idev->tempaddr_list);
  in6_ifa_hold(ifa);
 }

 in6_ifa_hold(ifa);
 write_unlock(&idev->lock);

 rcu_read_unlock_bh();

 inet6addr_notifier_call_chain(NETDEV_UP, ifa);
out:
 if (unlikely(err < 0)) {
  fib6_info_release(f6i);

  if (ifa) {
   if (ifa->idev)
    in6_dev_put(ifa->idev);
   kfree(ifa);
  }
  ifa = ERR_PTR(err);
 }

 return ifa;
}
