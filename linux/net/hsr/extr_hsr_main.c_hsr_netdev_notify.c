
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct notifier_block {int dummy; } ;
struct net_device {int dev_addr; } ;
struct hsr_priv {int self_node_db; } ;
struct hsr_port {TYPE_1__* dev; struct hsr_priv* hsr; int type; } ;
struct TYPE_3__ {int mtu; int dev_addr; } ;


 int HSR_PT_MASTER ;
 int HSR_PT_SLAVE_A ;
 int HSR_PT_SLAVE_B ;







 int NOTIFY_BAD ;
 int NOTIFY_DONE ;
 int call_netdevice_notifiers (int const,TYPE_1__*) ;
 int ether_addr_copy (int ,int ) ;
 int hsr_check_carrier_and_operstate (struct hsr_priv*) ;
 int hsr_create_self_node (int *,int ,int ) ;
 int hsr_del_port (struct hsr_port*) ;
 int hsr_get_max_mtu (struct hsr_priv*) ;
 struct hsr_port* hsr_port_get_hsr (struct hsr_priv*,int ) ;
 struct hsr_port* hsr_port_get_rtnl (struct net_device*) ;
 int is_hsr_master (struct net_device*) ;
 struct net_device* netdev_notifier_info_to_dev (void*) ;
 struct hsr_priv* netdev_priv (struct net_device*) ;
 int netdev_warn (TYPE_1__*,char*) ;

__attribute__((used)) static int hsr_netdev_notify(struct notifier_block *nb, unsigned long event,
        void *ptr)
{
 struct net_device *dev;
 struct hsr_port *port, *master;
 struct hsr_priv *hsr;
 int mtu_max;
 int res;

 dev = netdev_notifier_info_to_dev(ptr);
 port = hsr_port_get_rtnl(dev);
 if (!port) {
  if (!is_hsr_master(dev))
   return NOTIFY_DONE;
  hsr = netdev_priv(dev);
  port = hsr_port_get_hsr(hsr, HSR_PT_MASTER);
  if (!port) {

   return NOTIFY_DONE;
  }
 } else {
  hsr = port->hsr;
 }

 switch (event) {
 case 128:
 case 131:
 case 134:
  hsr_check_carrier_and_operstate(hsr);
  break;
 case 133:
  if (port->type == HSR_PT_MASTER) {




   break;
  }

  master = hsr_port_get_hsr(hsr, HSR_PT_MASTER);

  if (port->type == HSR_PT_SLAVE_A) {
   ether_addr_copy(master->dev->dev_addr, dev->dev_addr);
   call_netdevice_notifiers(133,
       master->dev);
  }


  port = hsr_port_get_hsr(hsr, HSR_PT_SLAVE_B);
  res = hsr_create_self_node(&hsr->self_node_db,
        master->dev->dev_addr,
        port ?
      port->dev->dev_addr :
      master->dev->dev_addr);
  if (res)
   netdev_warn(master->dev,
        "Could not update HSR node address.\n");
  break;
 case 132:
  if (port->type == HSR_PT_MASTER)
   break;
  mtu_max = hsr_get_max_mtu(port->hsr);
  master = hsr_port_get_hsr(port->hsr, HSR_PT_MASTER);
  master->dev->mtu = mtu_max;
  break;
 case 129:
  hsr_del_port(port);
  break;
 case 130:



  return NOTIFY_BAD;
 }

 return NOTIFY_DONE;
}
