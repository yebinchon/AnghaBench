
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int ifindex; } ;



__attribute__((used)) static bool neigh_ifindex_filtered(struct net_device *dev, int filter_idx)
{
 if (filter_idx && (!dev || dev->ifindex != filter_idx))
  return 1;

 return 0;
}
