
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct dsa_port {int pl; int xmit_queue; int xmit_work; } ;


 int cancel_work_sync (int *) ;
 struct dsa_port* dsa_slave_to_port (struct net_device*) ;
 int netif_device_detach (struct net_device*) ;
 int netif_running (struct net_device*) ;
 int phylink_stop (int ) ;
 int rtnl_lock () ;
 int rtnl_unlock () ;
 int skb_queue_purge (int *) ;

int dsa_slave_suspend(struct net_device *slave_dev)
{
 struct dsa_port *dp = dsa_slave_to_port(slave_dev);

 if (!netif_running(slave_dev))
  return 0;

 cancel_work_sync(&dp->xmit_work);
 skb_queue_purge(&dp->xmit_queue);

 netif_device_detach(slave_dev);

 rtnl_lock();
 phylink_stop(dp->pl);
 rtnl_unlock();

 return 0;
}
