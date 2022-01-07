
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {scalar_t__ devt; } ;
struct cdev {int dummy; } ;


 int cdev_del (struct cdev*) ;
 int device_del (struct device*) ;

void cdev_device_del(struct cdev *cdev, struct device *dev)
{
 device_del(dev);
 if (dev->devt)
  cdev_del(cdev);
}
