
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct dsa_slave_priv {int stats64; } ;
struct dsa_port {int pl; } ;


 int DSA_PORT_UNREGISTER ;
 int dsa_slave_notify (struct net_device*,int ) ;
 struct dsa_port* dsa_slave_to_port (struct net_device*) ;
 int free_netdev (struct net_device*) ;
 int free_percpu (int ) ;
 struct dsa_slave_priv* netdev_priv (struct net_device*) ;
 int netif_carrier_off (struct net_device*) ;
 int phylink_destroy (int ) ;
 int phylink_disconnect_phy (int ) ;
 int rtnl_lock () ;
 int rtnl_unlock () ;
 int unregister_netdev (struct net_device*) ;

void dsa_slave_destroy(struct net_device *slave_dev)
{
 struct dsa_port *dp = dsa_slave_to_port(slave_dev);
 struct dsa_slave_priv *p = netdev_priv(slave_dev);

 netif_carrier_off(slave_dev);
 rtnl_lock();
 phylink_disconnect_phy(dp->pl);
 rtnl_unlock();

 dsa_slave_notify(slave_dev, DSA_PORT_UNREGISTER);
 unregister_netdev(slave_dev);
 phylink_destroy(dp->pl);
 free_percpu(p->stats64);
 free_netdev(slave_dev);
}
