
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct vlan_group {scalar_t__ nr_vlan_devs; } ;
struct vlan_info {struct vlan_group grp; } ;
struct vlan_dev_priv {int vlan_proto; int vlan_id; struct net_device* real_dev; } ;
struct netlink_ext_ack {int dummy; } ;
struct net_device {int vlan_info; } ;


 int BUG_ON (int) ;
 int dev_hold (struct net_device*) ;
 int linkwatch_fire_event (struct net_device*) ;
 int netdev_upper_dev_link (struct net_device*,struct net_device*,struct netlink_ext_ack*) ;
 int register_netdevice (struct net_device*) ;
 struct vlan_info* rtnl_dereference (int ) ;
 int unregister_netdevice (struct net_device*) ;
 struct vlan_dev_priv* vlan_dev_priv (struct net_device*) ;
 int vlan_group_prealloc_vid (struct vlan_group*,int ,int ) ;
 int vlan_group_set_device (struct vlan_group*,int ,int ,struct net_device*) ;
 int vlan_gvrp_init_applicant (struct net_device*) ;
 int vlan_gvrp_uninit_applicant (struct net_device*) ;
 int vlan_mvrp_init_applicant (struct net_device*) ;
 int vlan_mvrp_uninit_applicant (struct net_device*) ;
 int vlan_stacked_transfer_operstate (struct net_device*,struct net_device*,struct vlan_dev_priv*) ;
 int vlan_vid_add (struct net_device*,int ,int ) ;
 int vlan_vid_del (struct net_device*,int ,int ) ;

int register_vlan_dev(struct net_device *dev, struct netlink_ext_ack *extack)
{
 struct vlan_dev_priv *vlan = vlan_dev_priv(dev);
 struct net_device *real_dev = vlan->real_dev;
 u16 vlan_id = vlan->vlan_id;
 struct vlan_info *vlan_info;
 struct vlan_group *grp;
 int err;

 err = vlan_vid_add(real_dev, vlan->vlan_proto, vlan_id);
 if (err)
  return err;

 vlan_info = rtnl_dereference(real_dev->vlan_info);

 BUG_ON(!vlan_info);

 grp = &vlan_info->grp;
 if (grp->nr_vlan_devs == 0) {
  err = vlan_gvrp_init_applicant(real_dev);
  if (err < 0)
   goto out_vid_del;
  err = vlan_mvrp_init_applicant(real_dev);
  if (err < 0)
   goto out_uninit_gvrp;
 }

 err = vlan_group_prealloc_vid(grp, vlan->vlan_proto, vlan_id);
 if (err < 0)
  goto out_uninit_mvrp;

 err = register_netdevice(dev);
 if (err < 0)
  goto out_uninit_mvrp;

 err = netdev_upper_dev_link(real_dev, dev, extack);
 if (err)
  goto out_unregister_netdev;


 dev_hold(real_dev);

 vlan_stacked_transfer_operstate(real_dev, dev, vlan);
 linkwatch_fire_event(dev);




 vlan_group_set_device(grp, vlan->vlan_proto, vlan_id, dev);
 grp->nr_vlan_devs++;

 return 0;

out_unregister_netdev:
 unregister_netdevice(dev);
out_uninit_mvrp:
 if (grp->nr_vlan_devs == 0)
  vlan_mvrp_uninit_applicant(real_dev);
out_uninit_gvrp:
 if (grp->nr_vlan_devs == 0)
  vlan_gvrp_uninit_applicant(real_dev);
out_vid_del:
 vlan_vid_del(real_dev, vlan->vlan_proto, vlan_id);
 return err;
}
