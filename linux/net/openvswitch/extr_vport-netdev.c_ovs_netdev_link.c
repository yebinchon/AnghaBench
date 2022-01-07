
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_1__ ;


struct vport {TYPE_1__* dev; int dp; } ;
struct TYPE_9__ {int flags; scalar_t__ type; int priv_flags; } ;


 scalar_t__ ARPHRD_ETHER ;
 scalar_t__ ARPHRD_NONE ;
 int EINVAL ;
 int ENODEV ;
 struct vport* ERR_PTR (int) ;
 int IFF_LOOPBACK ;
 int IFF_OVS_DATAPATH ;
 int dev_disable_lro (TYPE_1__*) ;
 TYPE_1__* dev_get_by_name (int ,char const*) ;
 int dev_put (TYPE_1__*) ;
 int dev_set_promiscuity (TYPE_1__*,int) ;
 int get_dpdev (int ) ;
 int netdev_frame_hook ;
 int netdev_master_upper_dev_link (TYPE_1__*,int ,int *,int *,int *) ;
 int netdev_rx_handler_register (TYPE_1__*,int ,struct vport*) ;
 int netdev_upper_dev_unlink (TYPE_1__*,int ) ;
 int ovs_dp_get_net (int ) ;
 scalar_t__ ovs_is_internal_dev (TYPE_1__*) ;
 int ovs_vport_free (struct vport*) ;
 int rtnl_lock () ;
 int rtnl_unlock () ;

struct vport *ovs_netdev_link(struct vport *vport, const char *name)
{
 int err;

 vport->dev = dev_get_by_name(ovs_dp_get_net(vport->dp), name);
 if (!vport->dev) {
  err = -ENODEV;
  goto error_free_vport;
 }

 if (vport->dev->flags & IFF_LOOPBACK ||
     (vport->dev->type != ARPHRD_ETHER &&
      vport->dev->type != ARPHRD_NONE) ||
     ovs_is_internal_dev(vport->dev)) {
  err = -EINVAL;
  goto error_put;
 }

 rtnl_lock();
 err = netdev_master_upper_dev_link(vport->dev,
        get_dpdev(vport->dp),
        ((void*)0), ((void*)0), ((void*)0));
 if (err)
  goto error_unlock;

 err = netdev_rx_handler_register(vport->dev, netdev_frame_hook,
      vport);
 if (err)
  goto error_master_upper_dev_unlink;

 dev_disable_lro(vport->dev);
 dev_set_promiscuity(vport->dev, 1);
 vport->dev->priv_flags |= IFF_OVS_DATAPATH;
 rtnl_unlock();

 return vport;

error_master_upper_dev_unlink:
 netdev_upper_dev_unlink(vport->dev, get_dpdev(vport->dp));
error_unlock:
 rtnl_unlock();
error_put:
 dev_put(vport->dev);
error_free_vport:
 ovs_vport_free(vport);
 return ERR_PTR(err);
}
