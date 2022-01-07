
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int flags; int dev_addr; int phydev; } ;
struct dsa_port {int pl; } ;


 int ENETDOWN ;
 int IFF_ALLMULTI ;
 int IFF_PROMISC ;
 int IFF_UP ;
 int dev_set_allmulti (struct net_device*,int) ;
 int dev_set_promiscuity (struct net_device*,int) ;
 int dev_uc_add (struct net_device*,int ) ;
 int dev_uc_del (struct net_device*,int ) ;
 int dsa_port_enable (struct dsa_port*,int ) ;
 struct net_device* dsa_slave_to_master (struct net_device*) ;
 struct dsa_port* dsa_slave_to_port (struct net_device*) ;
 int ether_addr_equal (int ,int ) ;
 int phylink_start (int ) ;

__attribute__((used)) static int dsa_slave_open(struct net_device *dev)
{
 struct net_device *master = dsa_slave_to_master(dev);
 struct dsa_port *dp = dsa_slave_to_port(dev);
 int err;

 if (!(master->flags & IFF_UP))
  return -ENETDOWN;

 if (!ether_addr_equal(dev->dev_addr, master->dev_addr)) {
  err = dev_uc_add(master, dev->dev_addr);
  if (err < 0)
   goto out;
 }

 if (dev->flags & IFF_ALLMULTI) {
  err = dev_set_allmulti(master, 1);
  if (err < 0)
   goto del_unicast;
 }
 if (dev->flags & IFF_PROMISC) {
  err = dev_set_promiscuity(master, 1);
  if (err < 0)
   goto clear_allmulti;
 }

 err = dsa_port_enable(dp, dev->phydev);
 if (err)
  goto clear_promisc;

 phylink_start(dp->pl);

 return 0;

clear_promisc:
 if (dev->flags & IFF_PROMISC)
  dev_set_promiscuity(master, -1);
clear_allmulti:
 if (dev->flags & IFF_ALLMULTI)
  dev_set_allmulti(master, -1);
del_unicast:
 if (!ether_addr_equal(dev->dev_addr, master->dev_addr))
  dev_uc_del(master, dev->dev_addr);
out:
 return err;
}
