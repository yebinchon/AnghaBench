
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr {int sa_data; } ;
struct net_device {int priv_flags; } ;


 int EADDRNOTAVAIL ;
 int EBUSY ;
 int IFF_LIVE_ADDR_CHANGE ;
 int is_valid_ether_addr (int ) ;
 scalar_t__ netif_running (struct net_device*) ;

int eth_prepare_mac_addr_change(struct net_device *dev, void *p)
{
 struct sockaddr *addr = p;

 if (!(dev->priv_flags & IFF_LIVE_ADDR_CHANGE) && netif_running(dev))
  return -EBUSY;
 if (!is_valid_ether_addr(addr->sa_data))
  return -EADDRNOTAVAIL;
 return 0;
}
