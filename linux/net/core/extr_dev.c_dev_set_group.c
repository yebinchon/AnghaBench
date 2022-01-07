
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int group; } ;



void dev_set_group(struct net_device *dev, int new_group)
{
 dev->group = new_group;
}
