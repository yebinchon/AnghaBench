
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vport {int rcu; int dev; } ;


 int call_rcu (int *,int ) ;
 scalar_t__ netif_is_ovs_port (int ) ;
 int ovs_netdev_detach_dev (struct vport*) ;
 int rtnl_lock () ;
 int rtnl_unlock () ;
 int vport_netdev_free ;

__attribute__((used)) static void netdev_destroy(struct vport *vport)
{
 rtnl_lock();
 if (netif_is_ovs_port(vport->dev))
  ovs_netdev_detach_dev(vport);
 rtnl_unlock();

 call_rcu(&vport->rcu, vport_netdev_free);
}
