
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;



__attribute__((used)) static int ____netdev_has_upper_dev(struct net_device *upper_dev, void *data)
{
 struct net_device *dev = data;

 return upper_dev == dev;
}
