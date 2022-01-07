
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct dsa_port {int pl; } ;


 struct dsa_port* dsa_slave_to_port (struct net_device*) ;
 int netif_device_attach (struct net_device*) ;
 int netif_running (struct net_device*) ;
 int phylink_start (int ) ;
 int rtnl_lock () ;
 int rtnl_unlock () ;

int dsa_slave_resume(struct net_device *slave_dev)
{
 struct dsa_port *dp = dsa_slave_to_port(slave_dev);

 if (!netif_running(slave_dev))
  return 0;

 netif_device_attach(slave_dev);

 rtnl_lock();
 phylink_start(dp->pl);
 rtnl_unlock();

 return 0;
}
