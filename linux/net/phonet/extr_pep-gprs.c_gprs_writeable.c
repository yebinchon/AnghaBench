
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct gprs_dev {int sk; struct net_device* dev; } ;


 int netif_wake_queue (struct net_device*) ;
 scalar_t__ pep_writeable (int ) ;

__attribute__((used)) static void gprs_writeable(struct gprs_dev *gp)
{
 struct net_device *dev = gp->dev;

 if (pep_writeable(gp->sk))
  netif_wake_queue(dev);
}
