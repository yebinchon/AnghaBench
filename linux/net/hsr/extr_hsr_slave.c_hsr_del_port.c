
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hsr_priv {int dummy; } ;
struct hsr_port {int dev; int port_list; struct hsr_priv* hsr; } ;


 int HSR_PT_MASTER ;
 int dev_put (int ) ;
 int dev_set_mtu (int ,int ) ;
 int dev_set_promiscuity (int ,int) ;
 int hsr_get_max_mtu (struct hsr_priv*) ;
 struct hsr_port* hsr_port_get_hsr (struct hsr_priv*,int ) ;
 int kfree (struct hsr_port*) ;
 int list_del_rcu (int *) ;
 int netdev_rx_handler_unregister (int ) ;
 int netdev_update_features (int ) ;
 int synchronize_rcu () ;

void hsr_del_port(struct hsr_port *port)
{
 struct hsr_priv *hsr;
 struct hsr_port *master;

 hsr = port->hsr;
 master = hsr_port_get_hsr(hsr, HSR_PT_MASTER);
 list_del_rcu(&port->port_list);

 if (port != master) {
  if (master) {
   netdev_update_features(master->dev);
   dev_set_mtu(master->dev, hsr_get_max_mtu(hsr));
  }
  netdev_rx_handler_unregister(port->dev);
  dev_set_promiscuity(port->dev, -1);
 }





 synchronize_rcu();

 if (port != master)
  dev_put(port->dev);
 kfree(port);
}
