
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;


 scalar_t__ is_admin_up (struct net_device*) ;
 scalar_t__ netif_oper_up (struct net_device*) ;

__attribute__((used)) static bool is_slave_up(struct net_device *dev)
{
 return dev && is_admin_up(dev) && netif_oper_up(dev);
}
