
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;


 int call_netdevice_notifiers_extack (unsigned long,struct net_device*,int *) ;

int call_netdevice_notifiers(unsigned long val, struct net_device *dev)
{
 return call_netdevice_notifiers_extack(val, dev, ((void*)0));
}
