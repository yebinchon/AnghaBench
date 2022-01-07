
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {scalar_t__ addr_len; int mc; } ;


 int EINVAL ;
 int __dev_set_rx_mode (struct net_device*) ;
 int __hw_addr_sync_multiple (int *,int *,scalar_t__) ;
 int netif_addr_lock (struct net_device*) ;
 int netif_addr_unlock (struct net_device*) ;

int dev_mc_sync_multiple(struct net_device *to, struct net_device *from)
{
 int err = 0;

 if (to->addr_len != from->addr_len)
  return -EINVAL;

 netif_addr_lock(to);
 err = __hw_addr_sync_multiple(&to->mc, &from->mc, to->addr_len);
 if (!err)
  __dev_set_rx_mode(to);
 netif_addr_unlock(to);
 return err;
}
