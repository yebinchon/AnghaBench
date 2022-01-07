
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct net_device {int dummy; } ;
struct TYPE_4__ {TYPE_1__* wdev; } ;
struct TYPE_3__ {int ifindex; } ;


 TYPE_2__* lowpan_802154_dev (struct net_device const*) ;

__attribute__((used)) static int lowpan_get_iflink(const struct net_device *dev)
{
 return lowpan_802154_dev(dev)->wdev->ifindex;
}
