
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct vport {TYPE_1__* dev; } ;
struct TYPE_5__ {int priv_flags; } ;


 int ASSERT_RTNL () ;
 int IFF_OVS_DATAPATH ;
 int dev_set_promiscuity (TYPE_1__*,int) ;
 int netdev_master_upper_dev_get (TYPE_1__*) ;
 int netdev_rx_handler_unregister (TYPE_1__*) ;
 int netdev_upper_dev_unlink (TYPE_1__*,int ) ;

void ovs_netdev_detach_dev(struct vport *vport)
{
 ASSERT_RTNL();
 vport->dev->priv_flags &= ~IFF_OVS_DATAPATH;
 netdev_rx_handler_unregister(vport->dev);
 netdev_upper_dev_unlink(vport->dev,
    netdev_master_upper_dev_get(vport->dev));
 dev_set_promiscuity(vport->dev, -1);
}
