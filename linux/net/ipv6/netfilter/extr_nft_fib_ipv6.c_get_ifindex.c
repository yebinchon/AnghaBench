
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int ifindex; } ;



__attribute__((used)) static int get_ifindex(const struct net_device *dev)
{
 return dev ? dev->ifindex : 0;
}
