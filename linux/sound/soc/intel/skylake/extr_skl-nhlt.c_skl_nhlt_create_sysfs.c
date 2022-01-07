
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct skl_dev {TYPE_1__* pci; } ;
struct device {int kobj; } ;
struct TYPE_4__ {int attr; } ;
struct TYPE_3__ {struct device dev; } ;


 TYPE_2__ dev_attr_platform_id ;
 int dev_warn (struct device*,char*) ;
 scalar_t__ sysfs_create_file (int *,int *) ;

int skl_nhlt_create_sysfs(struct skl_dev *skl)
{
 struct device *dev = &skl->pci->dev;

 if (sysfs_create_file(&dev->kobj, &dev_attr_platform_id.attr))
  dev_warn(dev, "Error creating sysfs entry\n");

 return 0;
}
