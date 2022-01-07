
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vif_device {int const flags; struct net_device* dev; } ;
struct net_device {int ifindex; } ;
struct net {int dummy; } ;
struct mr_table {int mroute_reg_vif_num; int maxvif; int id; struct vif_device* vif_table; } ;
struct mif6ctl {int mif6c_mifi; int mif6c_flags; int vifc_threshold; int vifc_rate_limit; int mif6c_pifi; } ;
struct TYPE_2__ {int mc_forwarding; } ;
struct inet6_dev {TYPE_1__ cnf; } ;


 int EADDRINUSE ;
 int EADDRNOTAVAIL ;
 int EINVAL ;
 int ENOBUFS ;
 int FIB_EVENT_VIF_ADD ;

 int NETCONFA_MC_FORWARDING ;
 int RTM_NEWNETCONF ;
 int VIFF_STATIC ;
 scalar_t__ VIF_EXISTS (struct mr_table*,int) ;
 struct inet6_dev* __in6_dev_get (struct net_device*) ;
 int call_ip6mr_vif_entry_notifiers (struct net*,int ,struct vif_device*,int,int ) ;
 struct net_device* dev_get_by_index (struct net*,int ) ;
 int dev_net (struct net_device*) ;
 int dev_put (struct net_device*) ;
 int dev_set_allmulti (struct net_device*,int) ;
 int inet6_netconf_notify_devconf (int ,int ,int ,int ,TYPE_1__*) ;
 struct net_device* ip6mr_reg_vif (struct net*,struct mr_table*) ;
 int mrt_lock ;
 int unregister_netdevice (struct net_device*) ;
 int vif_device_init (struct vif_device*,struct net_device*,int ,int ,int,int const) ;
 int write_lock_bh (int *) ;
 int write_unlock_bh (int *) ;

__attribute__((used)) static int mif6_add(struct net *net, struct mr_table *mrt,
      struct mif6ctl *vifc, int mrtsock)
{
 int vifi = vifc->mif6c_mifi;
 struct vif_device *v = &mrt->vif_table[vifi];
 struct net_device *dev;
 struct inet6_dev *in6_dev;
 int err;


 if (VIF_EXISTS(mrt, vifi))
  return -EADDRINUSE;

 switch (vifc->mif6c_flags) {
 case 0:
  dev = dev_get_by_index(net, vifc->mif6c_pifi);
  if (!dev)
   return -EADDRNOTAVAIL;
  err = dev_set_allmulti(dev, 1);
  if (err) {
   dev_put(dev);
   return err;
  }
  break;
 default:
  return -EINVAL;
 }

 in6_dev = __in6_dev_get(dev);
 if (in6_dev) {
  in6_dev->cnf.mc_forwarding++;
  inet6_netconf_notify_devconf(dev_net(dev), RTM_NEWNETCONF,
          NETCONFA_MC_FORWARDING,
          dev->ifindex, &in6_dev->cnf);
 }


 vif_device_init(v, dev, vifc->vifc_rate_limit, vifc->vifc_threshold,
   vifc->mif6c_flags | (!mrtsock ? VIFF_STATIC : 0),
   128);


 write_lock_bh(&mrt_lock);
 v->dev = dev;




 if (vifi + 1 > mrt->maxvif)
  mrt->maxvif = vifi + 1;
 write_unlock_bh(&mrt_lock);
 call_ip6mr_vif_entry_notifiers(net, FIB_EVENT_VIF_ADD,
           v, vifi, mrt->id);
 return 0;
}
