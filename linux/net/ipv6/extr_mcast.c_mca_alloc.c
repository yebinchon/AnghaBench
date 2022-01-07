
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inet6_dev {int dummy; } ;
struct in6_addr {int dummy; } ;
struct ifmcaddr6 {int mca_users; unsigned int mca_sfmode; int* mca_sfcount; int mca_flags; struct in6_addr mca_addr; int mca_lock; int mca_refcnt; int mca_tstamp; int mca_cstamp; struct inet6_dev* idev; int mca_timer; } ;


 int GFP_ATOMIC ;
 scalar_t__ IPV6_ADDR_MC_SCOPE (struct in6_addr*) ;
 scalar_t__ IPV6_ADDR_SCOPE_LINKLOCAL ;
 int MAF_NOREPORT ;
 int igmp6_timer_handler ;
 scalar_t__ ipv6_addr_is_ll_all_nodes (struct in6_addr*) ;
 int jiffies ;
 struct ifmcaddr6* kzalloc (int,int ) ;
 int refcount_set (int *,int) ;
 int spin_lock_init (int *) ;
 int timer_setup (int *,int ,int ) ;

__attribute__((used)) static struct ifmcaddr6 *mca_alloc(struct inet6_dev *idev,
       const struct in6_addr *addr,
       unsigned int mode)
{
 struct ifmcaddr6 *mc;

 mc = kzalloc(sizeof(*mc), GFP_ATOMIC);
 if (!mc)
  return ((void*)0);

 timer_setup(&mc->mca_timer, igmp6_timer_handler, 0);

 mc->mca_addr = *addr;
 mc->idev = idev;
 mc->mca_users = 1;

 mc->mca_cstamp = mc->mca_tstamp = jiffies;
 refcount_set(&mc->mca_refcnt, 1);
 spin_lock_init(&mc->mca_lock);

 mc->mca_sfmode = mode;
 mc->mca_sfcount[mode] = 1;

 if (ipv6_addr_is_ll_all_nodes(&mc->mca_addr) ||
     IPV6_ADDR_MC_SCOPE(&mc->mca_addr) < IPV6_ADDR_SCOPE_LINKLOCAL)
  mc->mca_flags |= MAF_NOREPORT;

 return mc;
}
