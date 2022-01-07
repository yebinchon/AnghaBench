
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct internal_dev {int dummy; } ;


 struct internal_dev* netdev_priv (struct net_device*) ;

__attribute__((used)) static struct internal_dev *internal_dev_priv(struct net_device *netdev)
{
 return netdev_priv(netdev);
}
