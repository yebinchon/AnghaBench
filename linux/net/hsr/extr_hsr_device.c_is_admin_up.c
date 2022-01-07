
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int flags; } ;


 int IFF_UP ;

__attribute__((used)) static bool is_admin_up(struct net_device *dev)
{
 return dev && (dev->flags & IFF_UP);
}
