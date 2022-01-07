
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct vport {TYPE_1__* dev; } ;
struct TYPE_4__ {int tstats; } ;


 int dev_set_promiscuity (TYPE_1__*,int) ;
 int free_percpu (int ) ;
 int netif_stop_queue (TYPE_1__*) ;
 int rtnl_lock () ;
 int rtnl_unlock () ;
 int unregister_netdevice (TYPE_1__*) ;

__attribute__((used)) static void internal_dev_destroy(struct vport *vport)
{
 netif_stop_queue(vport->dev);
 rtnl_lock();
 dev_set_promiscuity(vport->dev, -1);


 unregister_netdevice(vport->dev);
 free_percpu(vport->dev->tstats);
 rtnl_unlock();
}
