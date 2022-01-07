
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vif_device {int flags; struct net_device* dev; } ;
struct net_device {int ifindex; } ;
struct mr_table {int maxvif; int mroute_reg_vif_num; int id; int net; struct vif_device* vif_table; } ;
struct list_head {int dummy; } ;
struct TYPE_2__ {int mc_forwarding; } ;
struct inet6_dev {TYPE_1__ cnf; } ;


 int EADDRNOTAVAIL ;
 int FIB_EVENT_VIF_DEL ;
 int MIFF_REGISTER ;
 int NETCONFA_MC_FORWARDING ;
 int RTM_NEWNETCONF ;
 scalar_t__ VIF_EXISTS (struct mr_table*,int) ;
 struct inet6_dev* __in6_dev_get (struct net_device*) ;
 int call_ip6mr_vif_entry_notifiers (int ,int ,struct vif_device*,int,int ) ;
 int dev_net (struct net_device*) ;
 int dev_put (struct net_device*) ;
 int dev_set_allmulti (struct net_device*,int) ;
 int inet6_netconf_notify_devconf (int ,int ,int ,int ,TYPE_1__*) ;
 int mrt_lock ;
 int read_pnet (int *) ;
 int unregister_netdevice_queue (struct net_device*,struct list_head*) ;
 int write_lock_bh (int *) ;
 int write_unlock_bh (int *) ;

__attribute__((used)) static int mif6_delete(struct mr_table *mrt, int vifi, int notify,
         struct list_head *head)
{
 struct vif_device *v;
 struct net_device *dev;
 struct inet6_dev *in6_dev;

 if (vifi < 0 || vifi >= mrt->maxvif)
  return -EADDRNOTAVAIL;

 v = &mrt->vif_table[vifi];

 if (VIF_EXISTS(mrt, vifi))
  call_ip6mr_vif_entry_notifiers(read_pnet(&mrt->net),
            FIB_EVENT_VIF_DEL, v, vifi,
            mrt->id);

 write_lock_bh(&mrt_lock);
 dev = v->dev;
 v->dev = ((void*)0);

 if (!dev) {
  write_unlock_bh(&mrt_lock);
  return -EADDRNOTAVAIL;
 }






 if (vifi + 1 == mrt->maxvif) {
  int tmp;
  for (tmp = vifi - 1; tmp >= 0; tmp--) {
   if (VIF_EXISTS(mrt, tmp))
    break;
  }
  mrt->maxvif = tmp + 1;
 }

 write_unlock_bh(&mrt_lock);

 dev_set_allmulti(dev, -1);

 in6_dev = __in6_dev_get(dev);
 if (in6_dev) {
  in6_dev->cnf.mc_forwarding--;
  inet6_netconf_notify_devconf(dev_net(dev), RTM_NEWNETCONF,
          NETCONFA_MC_FORWARDING,
          dev->ifindex, &in6_dev->cnf);
 }

 if ((v->flags & MIFF_REGISTER) && !notify)
  unregister_netdevice_queue(dev, head);

 dev_put(dev);
 return 0;
}
