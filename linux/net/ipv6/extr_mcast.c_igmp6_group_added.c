
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct net_device {int flags; } ;
struct ifmcaddr6 {int mca_flags; scalar_t__ mca_sfmode; TYPE_1__* idev; int mca_crcount; int mca_lock; int mca_addr; } ;
struct TYPE_3__ {int mc_qrv; struct net_device* dev; } ;


 int IFF_UP ;
 scalar_t__ IPV6_ADDR_MC_SCOPE (int *) ;
 scalar_t__ IPV6_ADDR_SCOPE_LINKLOCAL ;
 int MAF_LOADED ;
 int MAF_NOREPORT ;
 int MAX_ADDR_LEN ;
 scalar_t__ MCAST_EXCLUDE ;
 int dev_mc_add (struct net_device*,char*) ;
 int igmp6_join_group (struct ifmcaddr6*) ;
 int mld_ifc_event (TYPE_1__*) ;
 scalar_t__ mld_in_v1_mode (TYPE_1__*) ;
 scalar_t__ ndisc_mc_map (int *,char*,struct net_device*,int ) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

__attribute__((used)) static void igmp6_group_added(struct ifmcaddr6 *mc)
{
 struct net_device *dev = mc->idev->dev;
 char buf[MAX_ADDR_LEN];

 if (IPV6_ADDR_MC_SCOPE(&mc->mca_addr) <
     IPV6_ADDR_SCOPE_LINKLOCAL)
  return;

 spin_lock_bh(&mc->mca_lock);
 if (!(mc->mca_flags&MAF_LOADED)) {
  mc->mca_flags |= MAF_LOADED;
  if (ndisc_mc_map(&mc->mca_addr, buf, dev, 0) == 0)
   dev_mc_add(dev, buf);
 }
 spin_unlock_bh(&mc->mca_lock);

 if (!(dev->flags & IFF_UP) || (mc->mca_flags & MAF_NOREPORT))
  return;

 if (mld_in_v1_mode(mc->idev)) {
  igmp6_join_group(mc);
  return;
 }






 if (mc->mca_sfmode == MCAST_EXCLUDE)
  mc->mca_crcount = mc->idev->mc_qrv;

 mld_ifc_event(mc->idev);
}
