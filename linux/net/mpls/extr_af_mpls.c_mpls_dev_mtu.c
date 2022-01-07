
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {unsigned int mtu; } ;



unsigned int mpls_dev_mtu(const struct net_device *dev)
{

 return dev->mtu;
}
