
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;


 int NET_NAME_UNKNOWN ;
 struct net_device* alloc_netdev (int,char*,int ,int ) ;
 int fddi_setup ;

struct net_device *alloc_fddidev(int sizeof_priv)
{
 return alloc_netdev(sizeof_priv, "fddi%d", NET_NAME_UNKNOWN,
       fddi_setup);
}
