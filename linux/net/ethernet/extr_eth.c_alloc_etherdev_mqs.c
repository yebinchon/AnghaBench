
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;


 int NET_NAME_UNKNOWN ;
 struct net_device* alloc_netdev_mqs (int,char*,int ,int ,unsigned int,unsigned int) ;
 int ether_setup ;

struct net_device *alloc_etherdev_mqs(int sizeof_priv, unsigned int txqs,
          unsigned int rxqs)
{
 return alloc_netdev_mqs(sizeof_priv, "eth%d", NET_NAME_UNKNOWN,
    ether_setup, txqs, rxqs);
}
