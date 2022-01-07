
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct gprs_dev {int dummy; } ;


 int gprs_writeable (struct gprs_dev*) ;
 struct gprs_dev* netdev_priv (struct net_device*) ;

__attribute__((used)) static int gprs_open(struct net_device *dev)
{
 struct gprs_dev *gp = netdev_priv(dev);

 gprs_writeable(gp);
 return 0;
}
