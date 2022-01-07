
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net {int dummy; } ;
struct ifreq {int ifr_ifindex; scalar_t__* ifr_name; } ;


 int IFNAMSIZ ;
 int netdev_get_name (struct net*,scalar_t__*,int ) ;

__attribute__((used)) static int dev_ifname(struct net *net, struct ifreq *ifr)
{
 ifr->ifr_name[IFNAMSIZ-1] = 0;
 return netdev_get_name(net, ifr->ifr_name, ifr->ifr_ifindex);
}
