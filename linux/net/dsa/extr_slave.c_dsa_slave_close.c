
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int flags; int dev_addr; } ;
struct dsa_port {int pl; int xmit_queue; int xmit_work; } ;


 int IFF_ALLMULTI ;
 int IFF_PROMISC ;
 int cancel_work_sync (int *) ;
 int dev_mc_unsync (struct net_device*,struct net_device*) ;
 int dev_set_allmulti (struct net_device*,int) ;
 int dev_set_promiscuity (struct net_device*,int) ;
 int dev_uc_del (struct net_device*,int ) ;
 int dev_uc_unsync (struct net_device*,struct net_device*) ;
 int dsa_port_disable (struct dsa_port*) ;
 struct net_device* dsa_slave_to_master (struct net_device*) ;
 struct dsa_port* dsa_slave_to_port (struct net_device*) ;
 int ether_addr_equal (int ,int ) ;
 int phylink_stop (int ) ;
 int skb_queue_purge (int *) ;

__attribute__((used)) static int dsa_slave_close(struct net_device *dev)
{
 struct net_device *master = dsa_slave_to_master(dev);
 struct dsa_port *dp = dsa_slave_to_port(dev);

 cancel_work_sync(&dp->xmit_work);
 skb_queue_purge(&dp->xmit_queue);

 phylink_stop(dp->pl);

 dsa_port_disable(dp);

 dev_mc_unsync(master, dev);
 dev_uc_unsync(master, dev);
 if (dev->flags & IFF_ALLMULTI)
  dev_set_allmulti(master, -1);
 if (dev->flags & IFF_PROMISC)
  dev_set_promiscuity(master, -1);

 if (!ether_addr_equal(dev->dev_addr, master->dev_addr))
  dev_uc_del(master, dev->dev_addr);

 return 0;
}
