
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct net_device {int dummy; } ;
struct ifmcaddr6 {int mca_flags; int mca_lock; int mca_refcnt; int mca_timer; TYPE_1__* idev; int mca_addr; } ;
struct TYPE_2__ {int dead; struct net_device* dev; } ;


 scalar_t__ IPV6_ADDR_MC_SCOPE (int *) ;
 scalar_t__ IPV6_ADDR_SCOPE_LINKLOCAL ;
 int MAF_LOADED ;
 int MAF_NOREPORT ;
 int MAX_ADDR_LEN ;
 scalar_t__ del_timer (int *) ;
 int dev_mc_del (struct net_device*,char*) ;
 int igmp6_leave_group (struct ifmcaddr6*) ;
 scalar_t__ ndisc_mc_map (int *,char*,struct net_device*,int ) ;
 int refcount_dec (int *) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

__attribute__((used)) static void igmp6_group_dropped(struct ifmcaddr6 *mc)
{
 struct net_device *dev = mc->idev->dev;
 char buf[MAX_ADDR_LEN];

 if (IPV6_ADDR_MC_SCOPE(&mc->mca_addr) <
     IPV6_ADDR_SCOPE_LINKLOCAL)
  return;

 spin_lock_bh(&mc->mca_lock);
 if (mc->mca_flags&MAF_LOADED) {
  mc->mca_flags &= ~MAF_LOADED;
  if (ndisc_mc_map(&mc->mca_addr, buf, dev, 0) == 0)
   dev_mc_del(dev, buf);
 }

 spin_unlock_bh(&mc->mca_lock);
 if (mc->mca_flags & MAF_NOREPORT)
  return;

 if (!mc->idev->dead)
  igmp6_leave_group(mc);

 spin_lock_bh(&mc->mca_lock);
 if (del_timer(&mc->mca_timer))
  refcount_dec(&mc->mca_refcnt);
 spin_unlock_bh(&mc->mca_lock);
}
