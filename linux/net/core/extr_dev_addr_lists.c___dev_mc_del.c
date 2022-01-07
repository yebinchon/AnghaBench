
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int addr_len; int mc; } ;


 int NETDEV_HW_ADDR_T_MULTICAST ;
 int __dev_set_rx_mode (struct net_device*) ;
 int __hw_addr_del_ex (int *,unsigned char const*,int ,int ,int,int) ;
 int netif_addr_lock_bh (struct net_device*) ;
 int netif_addr_unlock_bh (struct net_device*) ;

__attribute__((used)) static int __dev_mc_del(struct net_device *dev, const unsigned char *addr,
   bool global)
{
 int err;

 netif_addr_lock_bh(dev);
 err = __hw_addr_del_ex(&dev->mc, addr, dev->addr_len,
          NETDEV_HW_ADDR_T_MULTICAST, global, 0);
 if (!err)
  __dev_set_rx_mode(dev);
 netif_addr_unlock_bh(dev);
 return err;
}
