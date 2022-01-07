
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct net_device {int dummy; } ;
struct TYPE_2__ {int ifindex; } ;


 TYPE_1__* dsa_slave_to_master (struct net_device const*) ;

__attribute__((used)) static int dsa_slave_get_iflink(const struct net_device *dev)
{
 return dsa_slave_to_master(dev)->ifindex;
}
