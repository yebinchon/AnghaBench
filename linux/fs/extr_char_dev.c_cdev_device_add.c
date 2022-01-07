
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {scalar_t__ devt; int kobj; } ;
struct cdev {int dummy; } ;


 int cdev_add (struct cdev*,scalar_t__,int) ;
 int cdev_del (struct cdev*) ;
 int cdev_set_parent (struct cdev*,int *) ;
 int device_add (struct device*) ;

int cdev_device_add(struct cdev *cdev, struct device *dev)
{
 int rc = 0;

 if (dev->devt) {
  cdev_set_parent(cdev, &dev->kobj);

  rc = cdev_add(cdev, dev->devt, 1);
  if (rc)
   return rc;
 }

 rc = device_add(dev);
 if (rc)
  cdev_del(cdev);

 return rc;
}
