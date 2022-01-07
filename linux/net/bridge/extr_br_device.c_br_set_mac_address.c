
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr {int sa_data; } ;
struct net_device {int dev_addr; } ;
struct net_bridge {int lock; } ;


 int EADDRNOTAVAIL ;
 int br_stp_change_bridge_id (struct net_bridge*,int ) ;
 int ether_addr_equal (int ,int ) ;
 int is_valid_ether_addr (int ) ;
 struct net_bridge* netdev_priv (struct net_device*) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

__attribute__((used)) static int br_set_mac_address(struct net_device *dev, void *p)
{
 struct net_bridge *br = netdev_priv(dev);
 struct sockaddr *addr = p;

 if (!is_valid_ether_addr(addr->sa_data))
  return -EADDRNOTAVAIL;

 spin_lock_bh(&br->lock);
 if (!ether_addr_equal(dev->dev_addr, addr->sa_data)) {

  br_stp_change_bridge_id(br, addr->sa_data);
 }
 spin_unlock_bh(&br->lock);

 return 0;
}
