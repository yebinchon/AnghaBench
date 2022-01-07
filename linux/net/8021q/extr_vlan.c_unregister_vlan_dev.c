
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct vlan_group {scalar_t__ nr_vlan_devs; } ;
struct vlan_info {struct vlan_group grp; } ;
struct vlan_dev_priv {int flags; int vlan_proto; int vlan_id; struct net_device* real_dev; } ;
struct net_device {int vlan_info; } ;
struct list_head {int dummy; } ;


 int ASSERT_RTNL () ;
 int BUG_ON (int) ;
 int VLAN_FLAG_GVRP ;
 int VLAN_FLAG_MVRP ;
 int dev_put (struct net_device*) ;
 int netdev_upper_dev_unlink (struct net_device*,struct net_device*) ;
 struct vlan_info* rtnl_dereference (int ) ;
 int unregister_netdevice_queue (struct net_device*,struct list_head*) ;
 struct vlan_dev_priv* vlan_dev_priv (struct net_device*) ;
 int vlan_group_set_device (struct vlan_group*,int ,int ,int *) ;
 int vlan_gvrp_request_leave (struct net_device*) ;
 int vlan_gvrp_uninit_applicant (struct net_device*) ;
 int vlan_mvrp_request_leave (struct net_device*) ;
 int vlan_mvrp_uninit_applicant (struct net_device*) ;
 int vlan_vid_del (struct net_device*,int ,int ) ;

void unregister_vlan_dev(struct net_device *dev, struct list_head *head)
{
 struct vlan_dev_priv *vlan = vlan_dev_priv(dev);
 struct net_device *real_dev = vlan->real_dev;
 struct vlan_info *vlan_info;
 struct vlan_group *grp;
 u16 vlan_id = vlan->vlan_id;

 ASSERT_RTNL();

 vlan_info = rtnl_dereference(real_dev->vlan_info);
 BUG_ON(!vlan_info);

 grp = &vlan_info->grp;

 grp->nr_vlan_devs--;

 if (vlan->flags & VLAN_FLAG_MVRP)
  vlan_mvrp_request_leave(dev);
 if (vlan->flags & VLAN_FLAG_GVRP)
  vlan_gvrp_request_leave(dev);

 vlan_group_set_device(grp, vlan->vlan_proto, vlan_id, ((void*)0));

 netdev_upper_dev_unlink(real_dev, dev);




 unregister_netdevice_queue(dev, head);

 if (grp->nr_vlan_devs == 0) {
  vlan_mvrp_uninit_applicant(real_dev);
  vlan_gvrp_uninit_applicant(real_dev);
 }

 vlan_vid_del(real_dev, vlan->vlan_proto, vlan_id);


 dev_put(real_dev);
}
