
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;
struct atm_dev {struct device class_dev; } ;


 int device_del (struct device*) ;

void atm_unregister_sysfs(struct atm_dev *adev)
{
 struct device *cdev = &adev->class_dev;

 device_del(cdev);
}
