
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr {int sa_data; } ;
struct net_device {int flags; int dev_addr; } ;


 int EADDRNOTAVAIL ;
 int IFF_UP ;
 int dev_uc_add (struct net_device*,int ) ;
 int dev_uc_del (struct net_device*,int ) ;
 struct net_device* dsa_slave_to_master (struct net_device*) ;
 int ether_addr_copy (int ,int ) ;
 int ether_addr_equal (int ,int ) ;
 int is_valid_ether_addr (int ) ;

__attribute__((used)) static int dsa_slave_set_mac_address(struct net_device *dev, void *a)
{
 struct net_device *master = dsa_slave_to_master(dev);
 struct sockaddr *addr = a;
 int err;

 if (!is_valid_ether_addr(addr->sa_data))
  return -EADDRNOTAVAIL;

 if (!(dev->flags & IFF_UP))
  goto out;

 if (!ether_addr_equal(addr->sa_data, master->dev_addr)) {
  err = dev_uc_add(master, addr->sa_data);
  if (err < 0)
   return err;
 }

 if (!ether_addr_equal(dev->dev_addr, master->dev_addr))
  dev_uc_del(master, dev->dev_addr);

out:
 ether_addr_copy(dev->dev_addr, addr->sa_data);

 return 0;
}
