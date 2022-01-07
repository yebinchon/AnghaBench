
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct vport {int rcu; TYPE_1__* dev; } ;
struct TYPE_4__ {scalar_t__ reg_state; } ;


 scalar_t__ NETREG_REGISTERED ;
 int call_rcu (int *,int ) ;
 int dev_put (TYPE_1__*) ;
 scalar_t__ netif_is_ovs_port (TYPE_1__*) ;
 int ovs_netdev_detach_dev (struct vport*) ;
 int rtnl_delete_link (TYPE_1__*) ;
 int rtnl_lock () ;
 int rtnl_unlock () ;
 int vport_netdev_free ;

void ovs_netdev_tunnel_destroy(struct vport *vport)
{
 rtnl_lock();
 if (netif_is_ovs_port(vport->dev))
  ovs_netdev_detach_dev(vport);





 if (vport->dev->reg_state == NETREG_REGISTERED)
  rtnl_delete_link(vport->dev);
 dev_put(vport->dev);
 vport->dev = ((void*)0);
 rtnl_unlock();

 call_rcu(&vport->rcu, vport_netdev_free);
}
